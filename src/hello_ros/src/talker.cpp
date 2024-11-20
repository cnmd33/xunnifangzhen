#include "ros/ros.h"
#include "std_msgs/String.h"

int main(int argc, char **argv)
{
  ros::init(argc, argv, "talker");
  ros::NodeHandle n;
  ros::Publisher chatter_pub = n.advertise<std_msgs::String>("hello_ros_topic", 1000);
  ros::Rate loop_rate(10);

  while (ros::ok())
  {
    std_msgs::String msg;
    msg.data = "Hello, ROS!";
    chatter_pub.publish(msg);
    ROS_INFO("%s", msg.data.c_str());
    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}