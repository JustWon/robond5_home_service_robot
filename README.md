# robond5_home_service_robot

before the test script files, you should change the environment variables as follows.  
export TURTLEBOT_GAZEBO_MAP_FILE= (path to my_world.yaml file)  
export TURTLEBOT_GAZEBO_WORLD_FILE=(path to my_world.world file)  

for example, in my case,   
export TURTLEBOT_GAZEBO_MAP_FILE="/home/dongwonshin/robond_project5/src/worlds/my_world.yaml"  
export TURTLEBOT_GAZEBO_WORLD_FILE="/home/dongwonshin/robond_project5/src/worlds/my_world.world"  


# Brief writeup

In this project, I've implemented several packages for localizaton, mapping, and navigation to create a home service robot. 
First of all, we need to bring up the virtual environment to make a robot freely move in the space. So, I created the world model by using Gazebo editor and modieifed the turtlebot_world.launch file to show up my world.  


The localization is a process to estimate the position and orientation of the robot in the environment so that it can give the necessary information for mapping and navigation. AMCL package is the module for the accurate localiation via the monte carlo localization.  


The mapping is to create a map of the environment around the robot agent so that we can exploit the mapping information to achieve a safe and correct path planning. The slam_gmapping package is the module for correct mapping via the occupancy grid mapping.


Lastly, the navigation is a process to calculate the smooth path to the goal and this requires the localization and mapping step. In this home service robot application, the position of the pick-up object is provided, and then the robot calculate the appropriate path to the object and follow the route. After 5 seconds for picking the object, the robot moves to carry the object to the goal position.
