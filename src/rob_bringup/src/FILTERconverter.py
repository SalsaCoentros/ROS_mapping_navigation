#!/usr/bin/env python
import rospy
from tf.transformations import euler_from_quaternion

from geometry_msgs.msg import PoseWithCovarianceStamped
from nav_msgs.msg import Odometry



def handle_pose_convertion(rec):
    msg = Odometry()
    msg.header.stamp = rospy.Time.now()
    msg.header.frame_id="odom"
    #msg.child_frame_id = "base_footprint" 
    print(rec.pose)
    msg.pose.pose.position = rec.pose.pose.position

    rot = rec.pose.pose.orientation
    (r,p,y) = euler_from_quaternion([rot.x,rot.y,rot.z,rot.w]) # para meter no twist, mas nao percebi isso 
    msg.pose.pose.orientation.x = rec.pose.pose.orientation.x
    msg.pose.pose.orientation.y = rec.pose.pose.orientation.y
    msg.pose.pose.orientation.z = rec.pose.pose.orientation.z
    pub.publish(msg)


if __name__ == "__main__":
    rospy.init_node("gps_converter", anonymous=True)

    pub = rospy.Publisher("/odom", Odometry, queue_size=10)
    rospy.Subscriber("robot_pose_ekf/odom_combined", PoseWithCovarianceStamped, handle_pose_convertion)
    
    rospy.spin()