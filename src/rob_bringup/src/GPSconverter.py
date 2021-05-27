#!/usr/bin/env python
import rospy

from geometry_msgs.msg import Point
from nav_msgs.msg import Odometry



def handle_gps_convertion(rec):
    msg = Odometry()
    msg.header.stamp = rospy.Time.now()
    msg.child_frame_id = "gps_frame"
    msg.pose.x = rec.point.x
    msg.pose.y = rec.point.y
    msg.pose.z = rec.point.z
    pub.publish(msg)


if __name__ == "__main__":
    rospy.init_node("gps_converter", anonymous=True)

    pub = rospy.Publisher("/kmr/gps", Odometry, queue_size=10)
    rospy.Subscriber("/kmr/gps_utm", Point, handle_gps_convertion)
    
    rospy.spin()