#include "ros/ros.h"
#include "geometry_msgs/Pose2D.h"
//#include "common.h"

#include <sstream>
#include <iostream>

/*
float x;
float y;
float theta;
*/

/*
float Common::x;
float Common::y;
float Common::theta;
*/


extern float x;
extern float y;
extern float theta;

int main(int argc, char **argv)
{

  ros::init(argc, argv, "turtle_pub");

  ros::NodeHandle n;

  ros::Publisher turtlesim_pub = n.advertise<geometry_msgs::Pose2D>("turtlesim_bridge", 1000);

  ros::Rate loop_rate(10);

  while (ros::ok())
  {
    geometry_msgs::Pose2D msg;

/*
   msg.x = Common::x;
   msg.y = Common::y;
   msg.theta = Common::theta;
*/

   msg.x = x;
   msg.y = y;
   msg.theta = theta;

    turtlesim_pub.publish(msg);

	ROS_INFO_STREAM(std::setprecision(2) << std::fixed
	<< "position published=(" << msg.x << "," << msg.y << ")"
	<< ", theta published=" << msg.theta); 
    ros::spinOnce();

    loop_rate.sleep();
    
  }


  return 0;
}
