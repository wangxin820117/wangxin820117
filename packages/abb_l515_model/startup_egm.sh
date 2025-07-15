 #!/bin/bash
#https://github.com/ros-industrial/abb_robot_driver/issues/11#issuecomment-762916144


rosservice call /rws/stop_rapid "{}"
sleep .2
rosservice call /rws/pp_to_main "{}"
sleep .2
rosservice call /rws/start_rapid "{}"
sleep 0.2
python3 src/submodules/abb_control/src/P3/fix_velocity.py 
sleep 0.2
rosservice call /rws/sm_addin/start_egm_joint "{}"
sleep 0.8

rosservice call /egm/controller_manager/switch_controller "start_controllers: [/egm/joint_position_trajectory_controller]
stop_controllers: ['']
strictness: 1
start_asap: true
timeout: 0.0"

sleep 0.5

while true
do
echo "================================================="
read -p "Press enter to terminate EGM"
rosservice call /rws/sm_addin/stop_egm "{}"
echo "================================================="

read -p "Press enter to start EGM again"
rosservice call /rws/sm_addin/start_egm_joint "{}"
sleep 1

rosservice call /egm/controller_manager/switch_controller "start_controllers: [/egm/joint_position_trajectory_controller]
stop_controllers: ['']
strictness: 1
start_asap: false
timeout: 0.0"


echo "================================================="

echo "================================================="
echo "================================================="


done
