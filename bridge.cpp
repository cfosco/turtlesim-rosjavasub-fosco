#include "ros/ros.h"
#include "turtlesim/Pose.h"
#include "geometry_msgs/Pose2D.h"
//#include "common.h"
#include <sstream>
#include <iostream>

/*
float Common::x = 0;
float Common::y = 0;
float Common::theta = 0;
*/


ros::Publisher turtlesim_pub;

void pose_callback(const turtlesim::Pose& msgIn){
	
	
	geometry_msgs::Pose2D msg;

		msg.x = msgIn.x;
		msg.y = msgIn.y;
		msg.theta = msgIn.theta;

  	  turtlesim_pub.publish(msg);

	ROS_INFO_STREAM(std::setprecision(2) << std::fixed
	<< "position published=(" << msg.x << "," << msg.y << ")"
	<< ", theta published=" << msg.theta); 

}

int main(int argc, char **argv)
{
	

	ros::init(argc, argv, "turtlesim_bridge");

	ros::NodeHandle node;

	turtlesim_pub = node.advertise<geometry_msgs::Pose2D>("bridge_topic", 1000);

    	ros::Subscriber subscriber_pose=node.subscribe("/turtle1/pose", 1000, pose_callback);



 	//ros::Rate loop_rate(10);

 	 while (ros::ok())
 	 {
    		ros::spin();
	 }

     	 // loop_rate.sleep();
 
    

    return 0;
}


