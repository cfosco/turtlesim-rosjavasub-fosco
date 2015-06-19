# turtlesim-rosjavasub-fosco
Technical challenge for Creativa 77. Contains a brige ROS node, built in C++, that subscribes to the turtleX/Pose topic of turtlesim and republishes that info in a geometry_msgs/Pose2D type topic. The messages in that topic are then captured by a ROSJava subscriber node that calculates orientation and distance travelled and shows it in the termiinal.
