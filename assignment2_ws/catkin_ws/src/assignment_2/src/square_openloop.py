#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist

if __name__ == '__main__':
	rospy.init_node('open_loop_square')
	rospy.loginfo("Turtle moving in square open loop")
	rate = rospy.Rate(10)
	vel_pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
	vel_msg = Twist()
	square_side = rospy.get_param('~length')
	linear_v = 0.2
	angular_v = 0.2
	pi = 3.14
	time_step = 0.1
	vel_msg.linear.y = 0
	vel_msg.linear.z = 0
	vel_msg.angular.x = 0
	vel_msg.angular.y = 0
	while not rospy.is_shutdown():
		distance_travelled = 0
		while distance_travelled < square_side:
			vel_msg.linear.x = linear_v
			vel_msg.angular.z = 0
			distance_travelled = distance_travelled + (linear_v * time_step)
			#rospy.loginfo("Distance travelled is "+ str(distance_travelled))
			vel_pub.publish(vel_msg)
			rate.sleep()
		angle_rotated = 0
		while angle_rotated < pi/2:
			vel_msg.linear.x = 0
			vel_msg.angular.z = angular_v
			angle_rotated = angle_rotated + (angular_v * time_step)
			vel_pub.publish(vel_msg)
			rospy.loginfo("Angle roated is "+ str(angle_rotated))
			rate.sleep() 
	
