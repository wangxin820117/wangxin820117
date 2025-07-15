#!/usr/bin/env python3
import rospy
import rospkg
from gazebo_msgs.srv import *   ###internal package of ros. SpawnModel is kind of srv
from geometry_msgs.msg import Pose, Point, Quaternion, PoseArray ###internal package of ros
from tf.transformations import quaternion_from_euler
import yaml
from visualization_msgs.msg import Marker, MarkerArray
from gazebo_msgs.msg import ModelState

class PlantSpawner:
    def __init__(self):
        # Initialize.
        rospy.loginfo("[PlantSpawner] Initializing PlantSpawner.")

        self.model_name = "tomato"
        self.ref_frame = "world"
        
        rospack = rospkg.RosPack()
        self.model_path = rospack.get_path("greenhouse_gazebo") + "/urdf/"  ####model _path saved all the urdf file paths, of tomatoes. 
        
        self.roi_path = '/home/jianchaoci/ros_workspace/deep_learning_nbv/src/nbv_data_collection/materials/ground_truths'
        self.petiole_pub = rospy.Publisher("petiole_marker", MarkerArray, queue_size=50)
        self.peduncle_pub = rospy.Publisher("peduncle_marker", MarkerArray, queue_size=50)
        self.fruits_pub = rospy.Publisher("fruits_marker", MarkerArray, queue_size=50)

    def get_linear_pose(self, plant_num:int):
        plant_poses = PoseArray()
        for i in range(plant_num):
            pose = Pose(position=Point(i/2, 0, 2), orientation=Quaternion(0, 0, 0, 1))
            plant_poses.poses.append(pose)
        return plant_poses
    
    def set_model_name(self, model_name:str):
        self.model_name = model_name

    def spawn_list_plants(self, plants_list:list, plant_poses:PoseArray, print_log = True):
        rospy.wait_for_service('gazebo/spawn_sdf_model')

        for (plant, pose) in zip(plants_list, plant_poses.poses):
            try:
                spawner = rospy.ServiceProxy("/gazebo/spawn_sdf_model", SpawnModel)
                spawner(
                model_name=self.model_name + str(plant),
                model_xml=open(

                    self.model_path + self.model_name + str(plant) + ".sdf",
                    "r",
                ).read(),
                robot_namespace="/map",
                initial_pose=pose,
                reference_frame="world",
                )
                if print_log:
                    print('spawning %s[%s] successfully'% (self.model_name, str(plant)))
            except rospy.ServiceException as e:
                print("Service call failed: ", e)

    def reset_pose(self, plant_idx, pose, print_log = True):
        state_msg = ModelState()
        state_msg.model_name = self.model_name + str(plant_idx)
        state_msg.pose = pose
        state_msg.reference_frame = self.ref_frame
        rospy.wait_for_service('/gazebo/set_model_state')
        try:
            set_state = rospy.ServiceProxy("/gazebo/set_model_state", SetModelState)
            set_state(state_msg)
            if print_log:
                print('reset tomato[%s] successfully'% str(plant_idx))
        except rospy.ServiceException as e:
            print("[PlantSpawner] Service call to set_model_state failed: ", e)

    def set_pose(self, plant_idx, rotation, position, print_log = True):
        state_msg = ModelState()
        state_msg.model_name = self.model_name + str(plant_idx)
        state_msg.pose = Pose(position=Point(position[0]/100, position[1]/100, position[2]/100), orientation = Quaternion(*quaternion_from_euler(0, 0, rotation)))
        state_msg.reference_frame = self.ref_frame

        rospy.wait_for_service('/gazebo/set_model_state')
        try:
            set_state = rospy.ServiceProxy("/gazebo/set_model_state", SetModelState)
            set_state(state_msg)
            if print_log:
                print('move tomato[%s] to pose[x:%s;y:%s;r:%r]successfully'% (str(plant_idx), str(position[0]), str(position[1]), str(rotation)))
        except rospy.ServiceException as e:
            print("[PlantSpawner] Service call to set_model_state failed: ", e)

    def spawn_plant(self, plant_idx, plant_rotation, plant_position = [-40, -100, 1], print_log = True):
        # Set poses for plants.  use -0.024 if acc_pc is above the ground plan
        # plant_pose = Pose(position=Point(1, 0, 1.15), orientation = Quaternion(*quaternion_from_euler(0, 0, plant_rotation))) #plant_poses saved the poses of all plant 0-10 that you want to create
        
        self.plant_idx = plant_idx
        self.plant_rotation = plant_rotation
        plant_pose = Pose(position=Point(plant_position[0]/100, plant_position[1]/100, plant_position[2]/100), orientation = Quaternion(*quaternion_from_euler(0, 0, plant_rotation))) #plant_poses saved the poses of all plant 0-10 that you want to create
        # self.visual_roi(plant_idx, plant_rotation)
        plant_position = [str(i) for i in plant_position]
        plant_position = ''.join(plant_position)
        rospy.wait_for_service("/gazebo/spawn_sdf_model")
        try:
            spawner = rospy.ServiceProxy("/gazebo/spawn_sdf_model", SpawnModel)  ###many methods to call a service. (1) spawner(para1, para2, para3) (2) spawner.call(para_class)
            
            spawner(

                model_name=self.model_name + str(plant_idx),
                model_xml=open(
                    self.model_path + self.model_name + str(plant_idx) + ".sdf",
                    "r",
                ).read(),
                robot_namespace="/map",
                initial_pose=plant_pose,
                reference_frame="world",
            )
            if print_log:
                print('spawning plants [%s] successfully'% str(self.model_name + str(plant_idx)))
        except rospy.ServiceException as e:
            print("Service call failed: ", e)
    
    def delete_plants(self, plant_idx, print_log = False):
        rospy.wait_for_service('gazebo/delete_model')
        try:
            delete_model_service = rospy.ServiceProxy('gazebo/delete_model', DeleteModel)
            # delete_model_service(model_name=self.model_name + str(plant_idx) + '_%s'% str(plant_rotation) + '_%s'%plant_position)
            delete_model_service(model_name=self.model_name + str(plant_idx))
            if print_log:
                print('delete tomato[%s] successfully'% (str(plant_idx)))
        except Exception as e:
            print("Service call failed: ", e)
    
    def visual_roi(self):
        petioles = []
        peduncles = []
        fruits = []
        with open(self.roi_path+'/plant0' + str(self.plant_idx)+'_oois.yaml', 'r') as y:
            rois = yaml.safe_load(y)

        for roi in rois:
            if roi.startswith('petiole_'):
                petioles.append([rois[roi]['x'], rois[roi]['y'], rois[roi]['z']])
            elif roi.startswith('peduncle_'):
                peduncles.append([rois[roi]['x'], rois[roi]['y'], rois[roi]['z']])
            elif roi.startswith('fruit_'):
                fruits.append([rois[roi]['x']*0.4, rois[roi]['y']*0.4, rois[roi]['z']*0.4])

        fruitArray = MarkerArray() 
        for id, fruit in enumerate(fruits):
            marker = Marker()
            marker.header.frame_id = "world"
            marker.header.stamp = rospy.Time.now()

            # set shape, Arrow: 0; Cube: 1 ; Sphere: 2 ; Cylinder: 3
            marker.type = Marker.CUBE
            marker.id = id

            # Set the scale of the marker
            marker.scale.x = 0.03
            marker.scale.y = 0.03
            marker.scale.z = 0.03

            # Set the color
            marker.color.r = 0.0
            marker.color.g = 1.0
            marker.color.b = 0.0
            marker.color.a = 0.5

            # Set the pose of the marker
            marker.pose.position.x = fruit[0]
            marker.pose.position.y = fruit[1]
            marker.pose.position.z = fruit[2]
            marker.pose.orientation.x = 0.0
            marker.pose.orientation.y = 0.0
            marker.pose.orientation.z = 0.0
            marker.pose.orientation.w = 1.0
            fruitArray.markers.append(marker)
        self.fruits_pub.publish(fruitArray)

if __name__ == "__main__":
    rospy.init_node('plant_spawner')
    ps = PlantSpawner()
    ps.set_model_name('pepper')
    ps.spawn_plant(6, plant_rotation= 0)
    # plant_list = [21,22,23,24,25,26,27,28,29,30]
    # pose =  ps.get_linear_pose(len(plant_list))
    # ps.spawn_list_plants(plant_list, pose)
    # for i in plant_list:
    #     ps.delete_plants(i)
    #     ps.spawn_plant(20, plant_rotation= 0, plant_position = [0, 0, 0])

    # ps.delete_plants(6)
    



