#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
import math

x=0
y=0
theta=0

def callback_pose(position):
	global x,y,theta
	x = position.x
	y = position.y
	theta = position.theta
#	rospy.loginfo(theta)

def goal(goal_x,goal_y):
	distance = 1
	angle_deviation = 1
	vel_msg = Twist()
	Kp_linear = 1
	Kp_angular = 1
	rate = rospy.Rate(10)
	rospy.loginfo("linear started")
	while abs(angle_deviation) >0.0001:
		goal_angle = math.atan2(goal_y-y,goal_x-x)
		angle_deviation = math.atan2(goal_y-y,goal_x-x)-theta
		#rospy.loginfo("goal angle is "+str(goal_angle))
		#rospy.loginfo("current angle is "+str(theta))
		#rospy.loginfo("angle deviation "+str(angle_deviation))
		vel_msg.angular.z = Kp_angular * angle_deviation
		#rospy.loginfo("angular velocity is "+str(vel_msg.angular.z))
		vel_pub.publish(vel_msg)
		rospy.loginfo("x "+str(x)+" y "+str(y)+" theta "+str(theta))
		rate.sleep()
	vel_msg.angular.z = 0
	vel_pub.publish(vel_msg)

	while abs(distance)>0.001:
		rospy.loginfo("x is "+str(x)+ " y is "+str(y))
		#rospy.loginfo("goal is "+str(goal_x)+"  "+str(goal_y))
		distance = math.sqrt((goal_x-x)**2+(goal_y-y)**2)
		#rospy.loginfo("Error is "+str(distance))
		vel_msg.linear.x = Kp_linear * distance
		#rospy.loginfo("linear speed is "+str(vel_msg.linear.x))
		vel_pub.publish(vel_msg)
		rospy.loginfo("x "+str(x)+" y "+str(y)+" theta "+str(theta))
		rate.sleep()
	vel_msg.linear.x = 0
	vel_msg.angular.z = 0
	vel_pub.publish(vel_msg)
	rospy.loginfo("linear completed")
	

if __name__ == '__main__':
	rospy.init_node('closed_loop_square')
	rospy.loginfo("Turtle moving in square open loop")
	vel_pub = rospy.Publisher("/turtle1/cmd_vel", Twist, queue_size=10)
        pos_sub = rospy.Subscriber("/turtle1/pose",Pose,callback_pose)
	
	vel_msg = Twist()
	Pi = 3.14
	time_step = 0.1
	vel_msg.linear.y = 0
	vel_msg.linear.z = 0
	vel_msg.angular.x = 0
	vel_msg.angular.y = 0

	while not rospy.is_shutdown():
		goal(5,5)
		goal(8,5)
		goal(8,8)
		goal(5,8)
		 
	
