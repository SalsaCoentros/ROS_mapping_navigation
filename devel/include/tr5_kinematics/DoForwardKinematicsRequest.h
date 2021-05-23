// Generated by gencpp from file tr5_kinematics/DoForwardKinematicsRequest.msg
// DO NOT EDIT!


#ifndef TR5_KINEMATICS_MESSAGE_DOFORWARDKINEMATICSREQUEST_H
#define TR5_KINEMATICS_MESSAGE_DOFORWARDKINEMATICSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/JointState.h>

namespace tr5_kinematics
{
template <class ContainerAllocator>
struct DoForwardKinematicsRequest_
{
  typedef DoForwardKinematicsRequest_<ContainerAllocator> Type;

  DoForwardKinematicsRequest_()
    : Joints()  {
    }
  DoForwardKinematicsRequest_(const ContainerAllocator& _alloc)
    : Joints(_alloc)  {
  (void)_alloc;
    }



   typedef  ::sensor_msgs::JointState_<ContainerAllocator>  _Joints_type;
  _Joints_type Joints;





  typedef boost::shared_ptr< ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DoForwardKinematicsRequest_

typedef ::tr5_kinematics::DoForwardKinematicsRequest_<std::allocator<void> > DoForwardKinematicsRequest;

typedef boost::shared_ptr< ::tr5_kinematics::DoForwardKinematicsRequest > DoForwardKinematicsRequestPtr;
typedef boost::shared_ptr< ::tr5_kinematics::DoForwardKinematicsRequest const> DoForwardKinematicsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator1> & lhs, const ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.Joints == rhs.Joints;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator1> & lhs, const ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tr5_kinematics

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1a16d2a2ba05d89799791fc1a3a56530";
  }

  static const char* value(const ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1a16d2a2ba05d897ULL;
  static const uint64_t static_value2 = 0x99791fc1a3a56530ULL;
};

template<class ContainerAllocator>
struct DataType< ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tr5_kinematics/DoForwardKinematicsRequest";
  }

  static const char* value(const ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_msgs/JointState Joints\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/JointState\n"
"# This is a message that holds data to describe the state of a set of torque controlled joints. \n"
"#\n"
"# The state of each joint (revolute or prismatic) is defined by:\n"
"#  * the position of the joint (rad or m),\n"
"#  * the velocity of the joint (rad/s or m/s) and \n"
"#  * the effort that is applied in the joint (Nm or N).\n"
"#\n"
"# Each joint is uniquely identified by its name\n"
"# The header specifies the time at which the joint states were recorded. All the joint states\n"
"# in one message have to be recorded at the same time.\n"
"#\n"
"# This message consists of a multiple arrays, one for each part of the joint state. \n"
"# The goal is to make each of the fields optional. When e.g. your joints have no\n"
"# effort associated with them, you can leave the effort array empty. \n"
"#\n"
"# All arrays in this message should have the same size, or be empty.\n"
"# This is the only way to uniquely associate the joint name with the correct\n"
"# states.\n"
"\n"
"\n"
"Header header\n"
"\n"
"string[] name\n"
"float64[] position\n"
"float64[] velocity\n"
"float64[] effort\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Joints);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DoForwardKinematicsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tr5_kinematics::DoForwardKinematicsRequest_<ContainerAllocator>& v)
  {
    s << indent << "Joints: ";
    s << std::endl;
    Printer< ::sensor_msgs::JointState_<ContainerAllocator> >::stream(s, indent + "  ", v.Joints);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TR5_KINEMATICS_MESSAGE_DOFORWARDKINEMATICSREQUEST_H