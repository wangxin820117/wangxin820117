# ABB arm + Realsense L515 camera

This repo contains the model description of ABB 1200 robotic arm with Realsense L515 camera attached. The repo also contains a MoveIt configuration for the agent, along with launch files to bring-up the agent.

## Versions

[Ubuntu 20.04](https://releases.ubuntu.com/20.04/)  
[ROS Noetic](http://wiki.ros.org/noetic/Installation/Ubuntu)  

## Dependencies

(*TODO:* List all dependencies.)
```
# MoveIt
sudo apt install ros-noetic-moveit ros-noetic-ros-controllers ros-noetic-trac-ik
# Realsense
sudo apt install ros-noetic-ddynamic-reconfigure ros-noetic-realsense2-camera ros-noetic-rgbd-launch
```
<br/>

To install all dependencies quickly, run [dependencies.sh](https://git.wur.nl/flexcraft/integration/agent_model/abb_l515_model/-/blob/master/dependencies.sh).
```
./<path>/<to>/<file>/dependencies.sh
```

## Install

If you do not have a ROS workspace, please create one ([wiki](http://wiki.ros.org/catkin/Tutorials/create_a_workspace)). Here we assume that the name of the workspace is *flexcraft_ws*.  
(**Note:** Please clone the external repos and make the necessary file changes before compiling.)
```
cd flexcraft_ws/src/
git clone https://git.wur.nl/flexcraft/integration/agent_model/abb_l515_model.git
catkin_make
```

## External Repositories

Clone the following repositories under a separate folder within your ROS workspace and compile.
(**Note:** These repos contain a lot of unwanted packages. Consider removing them to make your workspace more manageable.)

- [ABB Experimental](https://github.com/ros-industrial/abb_experimental)
- [ROS Industrial Core](https://github.com/ros-industrial/industrial_core)
- [ABB ROS Industrial](https://github.com/ros-industrial/abb)
- [ABB Driver](https://github.com/ros-industrial/abb_driver)
- [Realsense](https://github.com/IntelRealSense/realsense-ros)  
<br/>

To clone all external repos quickly, run [external_repos.sh](https://git.wur.nl/flexcraft/integration/agent_model/abb_l515_model/-/blob/master/external_repos.sh).
```
./<path>/<to>/<file>/external_repos.sh
```

## Execution

### Simulation

1. Launch simulation in Gazebo.
```
roslaunch abb_l515_bringup abb_l515_bringup.launch usecase:=greenhouse sim:=true. CHOOSE: egm:=false or egm:=true
```
or
```
roslaunch abb_l515_bringup abb_l515_bringup.launch usecase:=poultry
```

### Real-world

1. Ensure all hardware connections are intact (camera, controller,...).
2. Launch the agent.
```
roslaunch abb_l515_bringup abb_l515_bringup.launch usecase:=greenhouse sim:=false robot_ip:=192.168.125.1 egm:=false
```
or
```
roslaunch abb_robot_bringup_examples ex2_rws_and_egm_6axis_robot.launch robot_ip:=192.168.125.1
and
./startup_egm.sh
and
roslaunch abb_l515_bringup abb_l515_bringup.launch usecase:=greenhouse sim:=false egm:=true
```
or
```
roslaunch abb_l515_bringup abb_l515_bringup.launch usecase:=poultry sim:=false robot_ip:=192.168.125.1
```
