// Generated by gencpp from file tr5_kinematics/DoForwardKinematics.msg
// DO NOT EDIT!


#ifndef TR5_KINEMATICS_MESSAGE_DOFORWARDKINEMATICS_H
#define TR5_KINEMATICS_MESSAGE_DOFORWARDKINEMATICS_H

#include <ros/service_traits.h>


#include <tr5_kinematics/DoForwardKinematicsRequest.h>
#include <tr5_kinematics/DoForwardKinematicsResponse.h>


namespace tr5_kinematics
{

struct DoForwardKinematics
{

typedef DoForwardKinematicsRequest Request;
typedef DoForwardKinematicsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct DoForwardKinematics
} // namespace tr5_kinematics


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::tr5_kinematics::DoForwardKinematics > {
  static const char* value()
  {
    return "217d3f8242b6548acd90c609a65b03ca";
  }

  static const char* value(const ::tr5_kinematics::DoForwardKinematics&) { return value(); }
};

template<>
struct DataType< ::tr5_kinematics::DoForwardKinematics > {
  static const char* value()
  {
    return "tr5_kinematics/DoForwardKinematics";
  }

  static const char* value(const ::tr5_kinematics::DoForwardKinematics&) { return value(); }
};


// service_traits::MD5Sum< ::tr5_kinematics::DoForwardKinematicsRequest> should match
// service_traits::MD5Sum< ::tr5_kinematics::DoForwardKinematics >
template<>
struct MD5Sum< ::tr5_kinematics::DoForwardKinematicsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::tr5_kinematics::DoForwardKinematics >::value();
  }
  static const char* value(const ::tr5_kinematics::DoForwardKinematicsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::tr5_kinematics::DoForwardKinematicsRequest> should match
// service_traits::DataType< ::tr5_kinematics::DoForwardKinematics >
template<>
struct DataType< ::tr5_kinematics::DoForwardKinematicsRequest>
{
  static const char* value()
  {
    return DataType< ::tr5_kinematics::DoForwardKinematics >::value();
  }
  static const char* value(const ::tr5_kinematics::DoForwardKinematicsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::tr5_kinematics::DoForwardKinematicsResponse> should match
// service_traits::MD5Sum< ::tr5_kinematics::DoForwardKinematics >
template<>
struct MD5Sum< ::tr5_kinematics::DoForwardKinematicsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::tr5_kinematics::DoForwardKinematics >::value();
  }
  static const char* value(const ::tr5_kinematics::DoForwardKinematicsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::tr5_kinematics::DoForwardKinematicsResponse> should match
// service_traits::DataType< ::tr5_kinematics::DoForwardKinematics >
template<>
struct DataType< ::tr5_kinematics::DoForwardKinematicsResponse>
{
  static const char* value()
  {
    return DataType< ::tr5_kinematics::DoForwardKinematics >::value();
  }
  static const char* value(const ::tr5_kinematics::DoForwardKinematicsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TR5_KINEMATICS_MESSAGE_DOFORWARDKINEMATICS_H
