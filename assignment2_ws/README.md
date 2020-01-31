Assignmen 2 Turtlesim

The files are present in catkin_ws->src->assignment_2->src
package name is assignment_2

1. Circle.py
* This code is used to command the turtle in turtlesim to move in a circular path.
* Turning radius'2' and direction of rotation is set to clockwise by code once it is executed using 	  command "rosrun assignment_2 circle.py"
* The angular velocity of turtle about z axis is set to 1 and linear velocity along x axis is set to 	  '2' using the formula v = r*omega, in this case omega is 1 as mentioned earlier.
* Once the velocity is set ,it is published to /turtle1/cmd_vel topic to which turtlesim_node is a   subscriber.

2. square_openloop.py

* This code is used to command the turtle move in a square path of size 2x2 at a linear velocity of   0.2 and angular velocity of 0.2 rad/s.
* A publisher is created to publish Twist to /turtle1/cmd_vel topic. 
* All velocities namely 3 linear and 3 angular velocities are set to 0.
* Inside while loop linear veloctity in x direction is assigned as 0.2 and this is published to the topic. Before while loop, "distance_travelled" variable is set to zero and inside while loop the distance travelled since command entered while loop is calculated using time step of the code and velocity.
* While loop gets executed till distance_travelled is equal to 2.After this x linear velocity is set 0 and it is published to bring turtle to stop before rotating. 
* Next while loop is used for turning turtle by 90 degrees, here angle of rotation of while loop is calculated by z angular velocity and step time. Once angle rotated is equal to 90 while loop exits after which z angular velocity is set to zero.
* Both these while loops are inside the main while loop which would run continuously till ctrl+c is set. Therefore the above two while loops will get executed one after the other continuously making the turtle move in straight line for 2 units then turn 90 degrees then move 2 units and so on thus making the turtle move in a square path of size 2x2.

3. square_closedloop.py

* This code is to move turtle in a square of size 3x3 whose coordinates are (5,5), (8,5), (8,8), (5,8). 
* A subscriber to get feedback on current position & orientation of turtle using /turtle1/Pose topic is created in addition to publisher used in previous programs.
* The subscriber provides information on x,y coordinates and current orientation of turtle which will be used along with desired coordinates as mentioned earlier to determine the linear and angular velocity.
* Like previous code, linear movement and rotational movement are done seperately.
* x,y and theta are global variables denoting position & orientation of turtle.
* goal function is used to move the turtle to desired location. It takes goal_x and goal_y coordinates as goal location. 
* First orientation of turtle with respect to goal location is checked using the following formula.
	goal_angle = math.atan2(goal_y-y,goal_x-x)
* The difference between goal_angle and theta is computed and Proportional gain for angular velocity (Kp_angular) is multiplied with deviation angle to get the z angular velocity, which is published.
* This while loop runs till angle deviation between goal_angle and theta reduces below a tolerance of 0.0001
* Once the goal orientation is reached, z angular velocity is set to 0
* In next while loop distance between current position and goal position is calculated as follows.
	distance = math.sqrt((goal_x -x)**2 + (goal_x-x)**2)
* This distance is multiplied with Kp_linear, which is linear velocity proportional gain and this is assigned as x linear velocity. 
* This while loop runs till distance falls below a tolerance of 0.001 after which it exits while loop setting x linear velocity to 0.
* This completes maneuver of turtlesim from one point to another. Similarly the other points are traversed by calling goal function by providing the goal location one by one. This makes the turtle move in square path.

ROSLAUNCH

Launch file named turtlesim_circle.launch is inside "launch" folder of "src" which will start turtlesim_node and circle.py code. It takes turning radius r = 2 from param in launch file. 

Launch file named two_turtlesim.launch is inside "launch" folder of "src" which will start two turtlesim_nodes simultaneously to run circle.py code and square_openloop.py nodes in it individually. It takes parameters from param for circle radius and square side length in launch file.
