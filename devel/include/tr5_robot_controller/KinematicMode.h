// Generated by gencpp from file tr5_robot_controller/KinematicMode.msg
// DO NOT EDIT!


#ifndef TR5_ROBOT_CONTROLLER_MESSAGE_KINEMATICMODE_H
#define TR5_ROBOT_CONTROLLER_MESSAGE_KINEMATICMODE_H

#include <ros/service_traits.h>


#include <tr5_robot_controller/KinematicModeRequest.h>
#include <tr5_robot_controller/KinematicModeResponse.h>


namespace tr5_robot_controller
{

struct KinematicMode
{

typedef KinematicModeRequest Request;
typedef KinematicModeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct KinematicMode
} // namespace tr5_robot_controller


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::tr5_robot_controller::KinematicMode > {
  static const char* value()
  {
    return "ba21159b50b288da315c096c1a299273";
  }

  static const char* value(const ::tr5_robot_controller::KinematicMode&) { return value(); }
};

template<>
struct DataType< ::tr5_robot_controller::KinematicMode > {
  static const char* value()
  {
    return "tr5_robot_controller/KinematicMode";
  }

  static const char* value(const ::tr5_robot_controller::KinematicMode&) { return value(); }
};


// service_traits::MD5Sum< ::tr5_robot_controller::KinematicModeRequest> should match
// service_traits::MD5Sum< ::tr5_robot_controller::KinematicMode >
template<>
struct MD5Sum< ::tr5_robot_controller::KinematicModeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::tr5_robot_controller::KinematicMode >::value();
  }
  static const char* value(const ::tr5_robot_controller::KinematicModeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::tr5_robot_controller::KinematicModeRequest> should match
// service_traits::DataType< ::tr5_robot_controller::KinematicMode >
template<>
struct DataType< ::tr5_robot_controller::KinematicModeRequest>
{
  static const char* value()
  {
    return DataType< ::tr5_robot_controller::KinematicMode >::value();
  }
  static const char* value(const ::tr5_robot_controller::KinematicModeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::tr5_robot_controller::KinematicModeResponse> should match
// service_traits::MD5Sum< ::tr5_robot_controller::KinematicMode >
template<>
struct MD5Sum< ::tr5_robot_controller::KinematicModeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::tr5_robot_controller::KinematicMode >::value();
  }
  static const char* value(const ::tr5_robot_controller::KinematicModeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::tr5_robot_controller::KinematicModeResponse> should match
// service_traits::DataType< ::tr5_robot_controller::KinematicMode >
template<>
struct DataType< ::tr5_robot_controller::KinematicModeResponse>
{
  static const char* value()
  {
    return DataType< ::tr5_robot_controller::KinematicMode >::value();
  }
  static const char* value(const ::tr5_robot_controller::KinematicModeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TR5_ROBOT_CONTROLLER_MESSAGE_KINEMATICMODE_H
