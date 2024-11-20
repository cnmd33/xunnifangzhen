#include "ros/ros.h"
#include "practice/my_property.h"

int main(int argc, char **argv)
{
  ros::init(argc, argv, "property_talker");
  ros::NodeHandle n;
  ros::Publisher pub = n.advertise<practice::my_property>("property_topic", 10);
  ros::Rate loop_rate(1);  // 1 Hz

  while (ros::ok())
  {
    practice::my_property msg;
    msg.name = "Student";
    msg.Class = 2023;
    pub.publish(msg);
    ROS_INFO("Published: name = %s, class = %d", msg.name.c_str(), msg.Class);
    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}