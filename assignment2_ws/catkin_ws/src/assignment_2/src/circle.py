#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose


if __name__ == '__main__':
	rospy.init_node('circle_mover')
	rospy.loginfo("Enter circle radius")
	vel_pub = rospy.Publisher('/turtle1/cmd_vel', Twist , queue_size =10)
	vel_msg = Twist()
	r = input("Enter circle radius: ")
	clock_wise = input("1 for clockwise 0 for anti-clockwise")
	vel_msg.linear.x = r
	vel_msg.linear.y = 0
	vel_msg.linear.z = 0
	vel_msg.angular.x = 0
	vel_msg.angular.y = 0
	if clock_wise == 1:
		vel_msg.angular.z = -1
	else:
		vel_msg.angular.z = 1
	rate = rospy.Rate(10)

	while not rospy.is_shutdown():
		vel_pub.publish(vel_msg)
		rate.sleep() 
	
	
	r = input("Set circle radius:")
