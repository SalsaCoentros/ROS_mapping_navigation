// Generated by gencpp from file tr5_kinematics/DoInverseKinematicsRequest.msg
// DO NOT EDIT!


#ifndef TR5_KINEMATICS_MESSAGE_DOINVERSEKINEMATICSREQUEST_H
#define TR5_KINEMATICS_MESSAGE_DOINVERSEKINEMATICSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace tr5_kinematics
{
template <class ContainerAllocator>
struct DoInverseKinematicsRequest_
{
  typedef DoInverseKinematicsRequest_<ContainerAllocator> Type;

  DoInverseKinematicsRequest_()
    : Coordinates()  {
    }
  DoInverseKinematicsRequest_(const ContainerAllocator& _alloc)
    : Coordinates(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _Coordinates_type;
  _Coordinates_type Coordinates;





  typedef boost::shared_ptr< ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DoInverseKinematicsRequest_

typedef ::tr5_kinematics::DoInverseKinematicsRequest_<std::allocator<void> > DoInverseKinematicsRequest;

typedef boost::shared_ptr< ::tr5_kinematics::DoInverseKinematicsRequest > DoInverseKinematicsRequestPtr;
typedef boost::shared_ptr< ::tr5_kinematics::DoInverseKinematicsRequest const> DoInverseKinematicsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator1> & lhs, const ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.Coordinates == rhs.Coordinates;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator1> & lhs, const ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tr5_kinematics

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d90918c3cbf1b30ba6e0f6a070767412";
  }

  static const char* value(const ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd90918c3cbf1b30bULL;
  static const uint64_t static_value2 = 0xa6e0f6a070767412ULL;
};

template<class ContainerAllocator>
struct DataType< ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tr5_kinematics/DoInverseKinematicsRequest";
  }

  static const char* value(const ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Pose Coordinates\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Coordinates);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DoInverseKinematicsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tr5_kinematics::DoInverseKinematicsRequest_<ContainerAllocator>& v)
  {
    s << indent << "Coordinates: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.Coordinates);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TR5_KINEMATICS_MESSAGE_DOINVERSEKINEMATICSREQUEST_H
