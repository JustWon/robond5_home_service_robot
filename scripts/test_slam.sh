#!/bin/bash

xterm -e " roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 5
xterm -e " rosrun gmapping slam_gmapping _linearUpdate:=0.1 _angularUpdate:=0.1 _particles:=50 _xmin:=-10 _xmax:=10 _ymin:=-10 _ymax:=10" &
sleep 5
xterm -e " roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 5
xterm -e " roslaunch turtlebot_teleop keyboard_teleop.launch"