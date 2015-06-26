HOW TO RUN THE TURTLESIM SUBSCRIBER

1) Create a normal catkin workspace, by typing:
> mkdir -p ~/catkin_ws/src
> cd ~/catkin_ws/src
> catkin_init_workspace

2) in the src folder of your workspace, create a package with the command 
> catkin_create_pkg my_package geometry_msgs rospy roscpp

3) Paste "bridge.cpp" in the src folder of your new package (catkin_ws/src/my_package/src)

4) Add the following lines to your CMakeLists.txt (located in catkin_ws/src/my_package)

add_executable(bridge src/bridge.cpp)
target_link_libraries(bridge ${catkin_LIBRARIES})
add_dependencies(bridge ${catkin_EXPORTED_TARGETS})

under "##Declare a cpp executable"

5) build your workspace, using "cd ~/catkin_ws/" and then "catkin_make"

6) source the setup file: "source devel/setup.bash"

7) Create a rosjava workspace:
> mkdir -p ~/myjava/src
> cd ~/myjava/src
> source /opt/ros/indigo/setup.bash
> catkin_init_workspace
> cd ~/myjava
> catkin_make

8) Create a new package in your workspace:
> cd src
> catkin_create_rosjava_pkg rosjava_catkin_package_a
> cd ..
> catkin_make
> source devel/setup.bash

9) Create a new project:
> cd src/rosjava_catkin_package_a
> catkin_create_rosjava_project turtlesim_subscriber
> cd ../..
> catkin_make

10) Go to rosjava_catkin_package_a/turtlesim_subscriber/build/install/turtlesim_subscriber/bin/com/github/rosjava/rosjava_catkin_package_a/turtlesim_subscriber

11) Delete Listener.java and Talker.java

12) Paste Listener.java, OrientationHandler.java and DistanceHandler.java

13) build your workspace: 
> cd ~/myjava
> catkin_make

14) in a new terminal, run ROS mainframe by using the command "roscore"

15) in another terminal, run Turtlesim by using "rosrun turtlesim turtlesim_node"

16) in another terminal, type "rosrun turtlesim turtle_teleop_key" so that you can move the turtle with the keyboard arrows

17) in yet another terminal, run the bridge.cpp by typing: 
> cd ~/catkin_ws
> source devel/setup.bash
> rosrun my_package bridge

18) Finally, run the java Subscriber in a new terminal by typing:
> cd ~/myjava
> source devel/setup.bash
> cd src/rosjava_catkin_package_a/turtlesim_subscriber
> cd build/install/turtlesim_subscriber/bin
> ./turtlesim_subscriber com.github.rosjava.rosjava_catkin_package_a.turtlesim_subscriber.Listener

19) The subsrciber should now be printing the distance travelled by the turtle since the node started and the actual orientation of the turtle. Use the keyboard arrows to move the turtle and see how the subscriber evolves.
