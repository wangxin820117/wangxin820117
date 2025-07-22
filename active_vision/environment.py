#!/usr/bin/env python3
from view_sampling.view_sampler import ViewSampler
from nbv_compute.nbv_computor import Nbvcomputor
import rospy
import time
import numpy as np
import random
import os
import torch
from camera_control.camera_control import CameraControl
from camera_control.camera_pose_broadcaster import CameraPoseBroadcaster
import cv2

class Environment:
    def __init__(
        self, config,
        continuous_action=False,
    ):
        self.config = config
        # if config['experiment']==1:
        #     assert 'ssl_global_nbv' not in config['planners'], 'can not set experiment =1 and planner = ssl_global_nbv the same time'
        
        self.data_save_dir = (
            "/home/jianchao/ros_workspace/paper4_semantic_nbv/src/drl_nbv_plan/materials/%s"
            % (str(time.ctime()))
        )

        # self.camera_control = CameraControl()
        # self.camera_pose_broadcast = CameraPoseBroadcaster()

        self.nbv_compute = Nbvcomputor(octomap_resulotion = config['octo_resolution'], recon_target=config['recon_target'])
        self.action_space = config['num_actions']  #'0:up_1, 1:down_1, 2:left_1, 3:right_1, '4:up_2, 5:down_2, 6:left_2, 7:right_2,
        self.scale_action_space = False
        self.continuous_action = continuous_action
        
        self.position_emb = config['positionemb']
        self.weighted_pc = config['weightedpc']
        self.tanh_ig = config['tanhig']

        self.big_plants = []
        self.small_plants = []

        self.experiment = config['experiment']##0: normal evaluation; 1: test scability; 2: real world

        if self.experiment==1:
            self.nbv_data_path = '/home/jianchao/dataset/nbv_data/paper4/data_smaller_fov_distance'
        else:
            self.nbv_data_path = '/home/jianchao/dataset/nbv_data/paper4/data_smaller_fov_distance' 

        if self.experiment==0:  
            ##for normal data when block is not used     
            self.train_plants = [1, 2, 4, 5, 7, 8, 10]  ##select the plants for training
            self.valid_plants = [3, 6, 9]  
            # self.train_plants = [4, 5]  ##select the plants for training
            # self.valid_plants = [6]  
            
            self.config_middle = {
                'center_x': -0.6, 'center_y': 0,
                'num_col': 9,
                'num_row': 9,
                'interval_h': 0.15,
                'interval_w': 0.15,
            }
                
        elif self.experiment==1:
            self.train_plants = [21, 23, 24, 27, 28, 29, 30]  ##
            self.valid_plants = [26]#[22, 25, 26] #22_smaller, 25_large, 26_medium
            self.config_small = {'num_col': 12, 'num_row':8}
            self.config_middle = {'num_col': 12, 'num_row':12}
            self.config_big = {'num_col': 12, 'num_row':18}

        self.all_plants = self.train_plants + self.valid_plants

        ##for normal data when block is not used
        # self.x_range = np.arange(-20, 20 + 1, 10)
        # self.y_range = np.arange(-20, 20 + 1, 10)
        # self.rotation_range = np.arange(0, 360, 90)
        self.x_range = np.arange(-20, 20 + 1, 10)
        self.y_range = np.arange(-20, 20 + 1, 10)
        self.z_range = np.arange(0, 20 + 1, 20)
        self.rotation_range = np.arange(0, 360, 90)

        self.view_sampler = ViewSampler(
            distribution_type="plane"  #plane, cylinder
        )  # plane, cylinder

        self.pc_size = config["pc_size"]

        self.set_seed()

        self.bbox_noise_bound_low = [-1, -1, 0]
        self.bbox_noise_bound_high = [1, 1, 2]

    def resample_pc(self, pcd, n):
        """
        Optimized version of point cloud resampling using voxel downsampling.
        
        Args:
            pcd (torch.Tensor): Input point cloud of shape (1, N, C)
            n (int): Target number of points
    
        Returns:
            torch.Tensor: Resampled point cloud of shape (1, n, C)
        """
        device = pcd.device
        points = pcd[0, :, :3] #(N, 3)
        features = pcd[0, :, 3:] #(N, 3)
        
        # Compute voxel size more efficiently
        bbox_min = points.min(dim=0).values#torch.tensor([-0.8, -0.8, 0.0]).to(device)
        bbox_max = points.max(dim=0).values#torch.tensor([0.8, 0.8, 2]).to(device)
        voxel_size = ((bbox_max - bbox_min).prod() / n) ** (1/3)
        
        # Faster voxel grid quantization
        voxel_indices = ((points - bbox_min) / voxel_size).long()
        
        # Convert to unique string key for faster unique operation
        voxel_keys = voxel_indices[:, 0] * 100000000 + voxel_indices[:, 1] * 10000 + voxel_indices[:, 2]
        unique_keys, inverse_indices = torch.unique(voxel_keys, return_inverse=True)
        
        # Use index_select for faster point selection
        if len(unique_keys) >= n:
            # If we have more voxels than needed, randomly select n voxels
            selected_voxels = unique_keys[torch.randperm(len(unique_keys), device=device)[:n]]
            mask = torch.zeros(len(voxel_keys), dtype=torch.bool, device=device)
            for voxel_id in selected_voxels:
                mask |= (voxel_keys == voxel_id)
            sampled_indices = mask.nonzero(as_tuple=True)[0][:n]
        else:
            # Take one point from each voxel
            sampled_indices = []
            for voxel_id in unique_keys:
                points_in_voxel = (voxel_keys == voxel_id).nonzero(as_tuple=True)[0]
                sampled_indices.append(points_in_voxel[0])
            sampled_indices = torch.tensor(sampled_indices, device=device)
            
            # Pad with random points if needed
            if len(sampled_indices) < n:
                remaining = n - len(sampled_indices)
                pad_indices = torch.randint(points.shape[0], (remaining,), device=device)
                sampled_indices = torch.cat((sampled_indices, pad_indices))
        
        # Gather points and features in one operation
        resampled_pcd = torch.cat((points[sampled_indices], features[sampled_indices]), dim=-1).unsqueeze(0)
        # resampled_pcd = self.add_noise(resampled_pcd, noisy_level='complete')
        return resampled_pcd
    
    def add_noise(self, resampled_pcd, noisy_level='complete'):
        ######################################### add noise for all points x-y-z #############
        if noisy_level == 'complete':
            width = self.bbox_noise_bound_high[0] - self.bbox_noise_bound_low[0]
            height = self.bbox_noise_bound_high[1] - self.bbox_noise_bound_low[1]
            depth = self.bbox_noise_bound_high[2] - self.bbox_noise_bound_low[2]
            random_points = np.random.rand(self.pc_size, 3)

            scaled_points = random_points * np.array([width, height, depth])
            sampled_points = scaled_points + np.array(self.bbox_noise_bound_low)  

            random_colors = np.random.rand(self.pc_size, 3)
            # 1: fruit, 0: non-fruit
            random_class  = np.random.randint(0, 2, (self.pc_size, 1))

            sampled_points = np.concatenate([sampled_points, random_colors, random_class], axis=-1)
            sampled_points = torch.tensor(sampled_points).cuda().unsqueeze(0)

            return sampled_points

        else:
            noise_std_range = torch.arange(0.1, 0.5, 0.1)
            indices = torch.randint(0, len(noise_std_range), (resampled_pcd.shape[1],), device=resampled_pcd.device)
            stds_per_points = noise_std_range[indices]

            stds_per_points_expanded = stds_per_points[:, None].expand(-1, 3)
            noise = torch.normal(mean = torch.tensor(0.0), std = stds_per_points_expanded).to(resampled_pcd.device).unsqueeze(0)
            resampled_pcd[:, :, :3] += noise
            return resampled_pcd

    def update_mode(self, mode):
        self.mode = mode

    def get_pcd(self, plant, rotation, position: list, hw: list):
        pcd_path = os.path.join(
            self.nbv_data_path,
            "plant%s" % str(plant),
            "xyzr_%s_%s_%s_%s" % (str(position[0]), str(position[1]), str(position[2]), str(rotation)),
            'pcd',
            "pcd_%s_%s.npy" % (str(hw[0]), str(hw[1])),
        )
        pcd = np.load(pcd_path)
        return torch.tensor(pcd).cuda()  # , xyzrgb
    
    def get_rgb(self, plant, rotation, position: list, hw: list):
        rgb_path = os.path.join(
            self.nbv_data_path,
            "plant%s" % str(plant),
            "xyzr_%s_%s_%s_%s" % (str(position[0]), str(position[1]), str(position[2]), str(rotation)),
            'rgb',
            "rgb_%s_%s.npy" % (str(hw[0]), str(hw[1])),
        )
        rgb = np.load(rgb_path)

        # resize to 64*64 and convert to float32
        rgb = cv2.resize(rgb, (64, 64))
        rgb = rgb.transpose(2, 0, 1).astype(np.float32) / 255.0  # Normalize to [0,1] and convert to float32
        # Add batch dimension to make it 4D: (1, channels, height, width)
        rgb = rgb[None, ...]
        return torch.tensor(rgb, dtype=torch.float32).cuda()  # Explicitly set dtype
    
    def get_viewpoints(self):
        viewpoints = self.view_sampler.sample_views(
                **self.config_middle
            )
        self.view_sampler.visual_candidates(viewpoints, color=[0.5,0.5,0.5])
        return viewpoints
    
    def get_grid_info(self):
        if self.plant in self.big_plants:
            x_dim,y_dim,z_dim = 0.8, 0.8, 0.9
        elif self.plant in self.small_plants:
            x_dim,y_dim,z_dim = 0.4, 0.4, 0.4
        else:
            x_dim,y_dim,z_dim = 0.7, 0.7, 1.3
        grid_center = np.array([self.x/100, self.y/100, z_dim/2])
        return np.array([x_dim, y_dim, z_dim]), grid_center
    
    def set_seed(self):
        random.seed(1004)

    def reset(self, planner):
        if self.mode == "train":
            self.plant = random.choice(self.train_plants)
        else:
            self.plant = random.choice(self.valid_plants)

        self.viewpoints = self.get_viewpoints(planner)
         
        self.max_step = 15
       
        self.rotation = random.choice(self.rotation_range)
        self.x, self.y = random.choice(self.x_range), random.choice(self.y_range)

        self.nbv_compute.load_complete_pc(
            'plant',
            self.plant,
            plant_rotation=self.rotation,
            plant_position=[self.x, self.y, 0],
            scale = 1,
            visual_com = False,
            visual_roi = False
        )
        # rospy.sleep(3.0)

        valid_init_view = False
        self.step_count = 0
        while not valid_init_view:
            current_view, current_hw = self.view_sampler.random_view(
                self.viewpoints
            )
            self.pcd_acc = self.get_pcd(
                self.plant, self.rotation, [self.x, self.y], current_hw
            )
            if self.pcd_acc.shape[1] > 10:
                valid_init_view = True

        self.pcd_acc = self.nbv_compute.classify_points_use_bbox(self.pcd_acc) # self.pcd_acc.shape = (1,n, 4)
                        ##update camera, only for testing
        # self.camera_control.move_camera_to_pose(self.viewpoints[current_hw[0], current_hw[1], :])
        # self.camera_pose_broadcast.broadcast(self.viewpoints[current_hw[0], current_hw[1], :])

        _, position, _ = self.view_sampler.quan2rpy(current_view)
        view_input = position
        view_input = (
            self.view_sampler.position_embeding(view_input)
            if self.position_emb
            else view_input.unsqueeze(0).unsqueeze(0)
        )
        view_input = view_input.to("cuda")
        acc_pc_resampled = self.resample_pc(self.pcd_acc, self.pc_size).permute(0, 2, 1)
        return (
            acc_pc_resampled,
            view_input,
            current_hw,
        )  # acc_pc_weighted.shape = (1,3,n)
    
    def step(self, action: np.ndarray, current_hw):
        assert self.step_count < self.max_step, "StepCount exceeded MaxStep=%s" % str(
            self.max_step
        )

        next_view, next_hw, _ = ViewSampler.update_view(
            self.viewpoints, current_hw, action
        )

        #         ##update camera, only for testing
        # self.camera_control.move_camera_to_pose(next_view[0])
        # self.camera_pose_broadcast.broadcast(next_view[0])
        # rospy.sleep(3.0)

        pcd_next = self.get_pcd(self.plant, self.rotation, [self.x, self.y], next_hw)
        pcd_next = self.nbv_compute.classify_points_use_bbox(pcd_next)# pcd_next.shape = (1,n, 4)
        self.pcd_acc, _, _, gt_ig = self.nbv_compute.combine_pc(
            pcd_next, self.pcd_acc, visual_pc=False
        )
        acc_pc_resampled = self.resample_pc(self.pcd_acc, self.pc_size).permute(0, 2, 1)

        _, position, _ = self.view_sampler.quan2rpy(next_view)

        view_input = position
        view_input = (
            self.view_sampler.position_embeding(view_input)
            if self.position_emb
            else view_input.unsqueeze(0).unsqueeze(0)
        )
        view_input = view_input.to("cuda")

        self.step_count += 1
        done = True if self.step_count >= self.max_step else False
        reward =  gt_ig#float(np.log(pc_new_shape[1])*gt_ig) if pc_new_shape[1]>0 else 0   #float(np.tanh(gt_ig * 3)) if self.tanh_ig else gt_ig  # torch.atanh(x-1)+3; - np.exp(-np.sqrt(np.sum(action**2))) #(1/self.max_step)*reward_weight
        return acc_pc_resampled, view_input, reward, done, {}, next_hw
    
    def reset_global(self, planner, predefined_views=None):
        self.planner = planner

        if self.mode == "train":
            self.plant = random.choice(self.train_plants)
        else:
            self.plant = random.choice(self.valid_plants)

        self.viewpoints = self.get_viewpoints()
         
        self.max_step = self.config['max_step']

        self.rotation = random.choice(self.rotation_range)
        self.x, self.y, self.z = random.choice(self.x_range), random.choice(self.y_range), random.choice(self.z_range)

        self.viewpoints_1d = self.viewpoints.reshape(1, self.viewpoints.shape[0]*self.viewpoints.shape[1], 7)

        self.pcd_list = []
        for i in range(self.viewpoints.shape[0]):
            for j in range(self.viewpoints.shape[1]):
                pcd_part = self.get_pcd(
                self.plant, self.rotation, [self.x, self.y, self.z], [i,j]
            )
                self.pcd_list.append(pcd_part)

        self.viewstate = -1*torch.ones(1, self.viewpoints_1d.shape[1], dtype=torch.float32).cuda()
        self.nbv_compute.load_complete_pc(
            'plant',
            self.plant,
            plant_rotation=self.rotation,
            plant_position=[self.x, self.y, self.z],
            scale = 1,
            visual_com = False,
            visual_roi = False
        )

        valid_init_view = False
        self.step_count = 0
        while not valid_init_view:
            if predefined_views is None:
                current_view_index = random.randint(0, self.viewpoints_1d.shape[1]-1)
            else:
                current_view_index = random.choice(predefined_views)

            pcd_acc = self.pcd_list[current_view_index]

            if pcd_acc.shape[1] > 10:
                valid_init_view = True

        self.pcd_acc = self.nbv_compute.classify_points_use_bbox(pcd_acc) # self.pcd_acc.shape = (1,n, 4)
        current_hw = np.unravel_index(current_view_index, (self.viewpoints.shape[0], self.viewpoints.shape[1]))

        # ##update camera, only for testing
        # self.camera_control.move_camera_to_pose(self.viewpoints[current_hw[0], current_hw[1], :])
        # self.camera_pose_broadcast.broadcast(self.viewpoints[current_hw[0], current_hw[1], :])
        
        self.viewstate[0, current_view_index] = 1.0
        acc_pc_resampled = self.resample_pc(self.pcd_acc.clone(), self.pc_size).permute(0, 2, 1)

        return (
            acc_pc_resampled,
            self.viewstate.clone(),
            current_view_index,
            current_hw,
        )  # acc_pc_weighted.shape = (1,3,n)

    def step_global(self, nbv_index, extra_views):
        assert self.step_count < self.max_step, "StepCount exceeded MaxStep=%s" % str(self.max_step)
        nbv_hw = np.unravel_index(nbv_index, (self.viewpoints.shape[0], self.viewpoints.shape[1]))

        # # Check if the view has already been visited
        if self.viewstate[0, nbv_index] == 1.0:
            print('repeat view')
        # generate a vector with all None values
        gt_ig_list = torch.full((1, self.viewstate.shape[-1]), torch.nan).cuda()
        gt_ig_list[0, self.viewstate[0, :] == 1.0] = 0.0

        pcd_acc = self.pcd_acc.clone()

        pcd_nbv = self.pcd_list[nbv_index]
        pcd_nbv = self.nbv_compute.classify_points_use_bbox(pcd_nbv)
        self.pcd_acc, _, _, gt_ig = self.nbv_compute.combine_pc(pcd_nbv, pcd_acc, self.planner, visual_pc=False)

        gt_ig_list[0, nbv_index] = gt_ig
        self.viewstate[0, nbv_index] = 1.0

        # #         ##update camera, only for testing
        # self.camera_control.move_camera_to_pose(self.viewpoints[nbv_hw[0], nbv_hw[1], :])
        # self.camera_pose_broadcast.broadcast(self.viewpoints[nbv_hw[0], nbv_hw[1], :])
        # rospy.sleep(5.0)

        # Resample the accumulated point cloud
        acc_pc_resampled = self.resample_pc(self.pcd_acc.clone(), self.pc_size).permute(0, 2, 1)

        self.step_count += 1
        done = self.step_count >= self.max_step
        # reward = gt_ig# + uncertainty_reward # Reward based on information gain
        return acc_pc_resampled, self.viewstate.clone(), gt_ig_list.cpu(), done, nbv_hw
    
    def get_nbv_pc(self, action: np.ndarray, current_hw):
        _, next_hw, _ = ViewSampler.update_view(
            self.viewpoints, current_hw, action
        )
        pcd_next = self.get_state(self.plant, self.rotation, [self.x, self.y], next_hw)
        return pcd_next

    def get_inbound_pcds(self, current_hw):
        in_bound_actions = []
        in_bound_pcds = []
        for action in range(self.action_space):
            _, next_hw, in_bound = ViewSampler.update_view(
                self.viewpoints, current_hw, action
            )
            if in_bound:
                pcd_next = self.get_pcd(self.plant, self.rotation, [self.x, self.y], next_hw)
                in_bound_actions.append(action)
                in_bound_pcds.append(pcd_next)
        return in_bound_actions, in_bound_pcds
    
    def get_inbound_actions(self, current_hw):
        in_bound_actions = []
        in_bound_wxyz = []
        for action in range(self.action_space):
            _, next_hw, in_bound = ViewSampler.update_view(
                self.viewpoints, current_hw, action
            )
            if in_bound:
                view_xyzw = self.viewpoints[next_hw[0],next_hw[1],:]
                view_wxyz = [view_xyzw[0],view_xyzw[1],view_xyzw[2],view_xyzw[6],view_xyzw[3],view_xyzw[4],view_xyzw[5]]
                in_bound_actions.append(action)
                in_bound_wxyz.append(np.array(view_wxyz))
        return in_bound_actions, np.array(in_bound_wxyz)

    def get_ig_map(self):
        height = self.args["cylinder_views"]["rows"]
        weight = self.args["cylinder_views"]["columns"]
        igmap = np.full((height, weight), 0, dtype=np.float32)
        for i in range(height):
            for j in range(weight):
                view_pose = np.asarray([self.viewpoints[i, j, :]])
                self.camera_control.move_camera_to_pose(view_pose[0])
                self.camera_pose_broadcast.broadcast(view_pose[0])
                rospy.sleep(3.0)
                pcd_next, _ = self.nbv_compute.get_point_cloud(visual_pc=False)
                gt_ig = self.nbv_compute.compute_ig2(pcd_next, self.pcd_acc)
                igmap[height - 1 - i, j] = gt_ig
        return igmap
