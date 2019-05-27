#!/bin/sh

xterm -e " roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 5
xterm -e " roslaunch turtlebot_gazebo amcl_demo.launch" &
sleep 5
xterm -e " rosrun rviz rviz -d /home/dongwonshin/robond_project5/src/rvizConfig/home_service.rviz" &
sleep 5
xterm -e " rosrun add_markers add_markers_node" &
sleep 5
xterm -e " rosrun pick_objects pick_objects_node"
