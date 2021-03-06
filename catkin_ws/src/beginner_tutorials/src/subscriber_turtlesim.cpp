#include "ros/ros.h"
#include "turtlesim/Pose.h"
//#include "common.h"
#include <sstream>
#include <iostream>

/*
float Common::x = 0;
float Common::y = 0;
float Common::theta = 0;
*/


float x= 0;
float y= 0;
float theta = 0;


void pose_callback(const turtlesim::Pose& msgIn){
	
	/*
	Common::x = msgIn.x;
	Common::y = msgIn.y;
	Common::theta = msgIn.theta;
	*/
	
	
	x = msgIn.x;
	y = msgIn.y;
	theta = msgIn.theta;
	

ROS_INFO_STREAM(std::setprecision(2) << std::fixed
	<< "position saved=(" << x << "," << y << ")"
	<< ", theta saved=" << theta); 
	
}

int main(int argc, char **argv)
{
	

	ros::init(argc, argv, "turtle_sub");

	ros::NodeHandle node;

    	ros::Subscriber subscriber_pose=node.subscribe("/turtle1/pose", 1000, pose_callback);

    	ros::spin();

    return 0;
}


