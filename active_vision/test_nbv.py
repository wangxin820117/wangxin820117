#!/usr/bin/env python3
from view_sampling.view_sampler import ViewSampler
from active_vision.volumetric_planner import ActivePlanner
import numpy as np
import torch
import random
import rospy
import os

class Test_NBV:
    def __init__(self):

        self.config_middle = {
                'center_x': -0.6, 'center_y': 0,
                'num_col': 9,
                'num_row': 9,
                'interval_h': 0.15,
                'interval_w': 0.15,
            }
        self.view_sampler = ViewSampler(
            distribution_type="plane"  #plane, cylinder
        )  
        self.viewpoints = self.view_sampler.sample_views(
                **self.config_middle
            )
            
        self.viewpoints_1d = self.viewpoints.reshape(1, self.viewpoints.shape[0]*self.viewpoints.shape[1], 7)
        self.viewpoints_1d = self.viewpoints_1d[...,[0,1,2,6,3,4,5]]  # xyzwrpy
        
        self.voxel_global = ActivePlanner()

        self.grid_center = np.array([0, 0, 0.7])
        self.grid_dim = np.array([0.7, 0.7, 1.5])

        self.pcd_list = []
        for i in range(self.viewpoints.shape[0]):
            for j in range(self.viewpoints.shape[1]):
                pcd_part = self.get_pcd([i,j])
                self.pcd_list.append(pcd_part)
    
    def get_pcd(self, hw):
        dir = '/home/wangxin/Documents/Wx_ws/src/packages/xyzr_0_0_0_0/pcd'
        pcd_path = os.path.join(dir, "pcd_%s_%s.npy" % (str(hw[0]), str(hw[1])))
        
        pcd = np.load(pcd_path)
        return torch.tensor(pcd).cuda()  # , xyzrgb

    def run(self):
        
        grid_size, grid_center = self.grid_dim, self.grid_center

        self.view_sampler.visual_candidates(self.viewpoints, color=[0.5,0.5,0.5])
        self.voxel_global.init_voxel_grid(
                grid_size = grid_size,
                voxel_size = np.array([0.003]),
                grid_center = grid_center)

        current_view_index = random.randint(0, self.viewpoints_1d.shape[1]-1)
        view_xyzwrpy = self.viewpoints_1d[0, current_view_index, :]
        ########################################
        pcd = self.pcd_list[current_view_index][..., 0:3]
        depth_image = self.voxel_global.convert_pc2depth(pcd, view_xyzwrpy, mode = 'xyz')
        self.voxel_global.depth_to_voxels(depth_image, torch.ones_like(torch.tensor(depth_image)).unsqueeze(-1).repeat(1,1,2), view_xyzwrpy)

        rospy.sleep(0.1)
        self.voxel_global.visualize()

        for i in range(10):
            _, nbv_index, gain, _ = self.voxel_global.active_view(self.viewpoints_1d[0])  # select the next best view

            print("Current view index:", current_view_index, "Next best view index:", nbv_index)

            view_xyzwrpy = self.viewpoints_1d[0, nbv_index, :]

            pcd = self.pcd_list[nbv_index][..., 0:3]
            depth_image = self.voxel_global.convert_pc2depth(pcd, view_xyzwrpy, mode = 'xyz')
            self.voxel_global.depth_to_voxels(depth_image, torch.ones_like(torch.tensor(depth_image)).unsqueeze(-1).repeat(1,1,2), view_xyzwrpy)

            rospy.sleep(0.1)
            self.voxel_global.visualize()
            current_view_index = nbv_index

        ##############################
        # pcd = self.environment.pcd_list[current_view_index]
        # pcd = self.environment.nbv_compute.classify_points_use_bbox(pcd)
        # depth_image, semantics_image = self.voxel_global.convert_pc2depth(pcd, view_xyzwrpy, mode = 'xyzrgbc')
        # self.voxel_global.depth_to_voxels(depth_image, torch.tensor(semantics_image), view_xyzwrpy)
        # self.voxel_global.visualize()

if __name__ == "__main__":
    rospy.init_node('test_nbv')
    test_nbv = Test_NBV()

    while not rospy.is_shutdown():
        test_nbv.run()
        rospy.sleep(1)
    







    

        

