使用步骤：

前提：请将用户名改为自己的用户名

1：导航到这个文件所在的上级文件夹

如下：drp@dairenping:~/catkin_ws$ cd /home/drp/catkin_ws

2:构建工作区

如下：drp@dairenping:~/catkin_ws$ catkin_make

如果发现出错，就如下使用：drp@dairenping:~/catkin_ws$ rm -rf build devel，再重新使用catkin_make构建

3：设置环境变量

如下：drp@dairenping:~/catkin_ws$ source devel/setup.bash

4：运行

如下：drp@dairenping:~/catkin_ws$ roslaunch --screen hello_ros hello_ros.launch

或drp@dairenping:~/catkin_ws$ roslaunch --screen practice property.launch

5：Ctrl+C结束进程

谢谢！

