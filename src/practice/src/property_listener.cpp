#include "ros/ros.h"
#include "practice/my_property.h"

void callback(const practice::my_property::ConstPtr& msg)
{
  ROS_INFO("I heard: Name=%s, Class=%d", msg->name.c_str(), msg->Class);
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "property_listener");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("property_topic", 10, callback);
  ros::spin();
  return 0;
}