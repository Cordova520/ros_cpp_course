// Generated by gencpp from file third_project/TurnCamera.msg
// DO NOT EDIT!


#ifndef THIRD_PROJECT_MESSAGE_TURNCAMERA_H
#define THIRD_PROJECT_MESSAGE_TURNCAMERA_H

#include <ros/service_traits.h>


#include <third_project/TurnCameraRequest.h>
#include <third_project/TurnCameraResponse.h>


namespace third_project
{

struct TurnCamera
{

typedef TurnCameraRequest Request;
typedef TurnCameraResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct TurnCamera
} // namespace third_project


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::third_project::TurnCamera > {
  static const char* value()
  {
    return "48e9c72001527a85ebcc47fcec8f9237";
  }

  static const char* value(const ::third_project::TurnCamera&) { return value(); }
};

template<>
struct DataType< ::third_project::TurnCamera > {
  static const char* value()
  {
    return "third_project/TurnCamera";
  }

  static const char* value(const ::third_project::TurnCamera&) { return value(); }
};


// service_traits::MD5Sum< ::third_project::TurnCameraRequest> should match
// service_traits::MD5Sum< ::third_project::TurnCamera >
template<>
struct MD5Sum< ::third_project::TurnCameraRequest>
{
  static const char* value()
  {
    return MD5Sum< ::third_project::TurnCamera >::value();
  }
  static const char* value(const ::third_project::TurnCameraRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::third_project::TurnCameraRequest> should match
// service_traits::DataType< ::third_project::TurnCamera >
template<>
struct DataType< ::third_project::TurnCameraRequest>
{
  static const char* value()
  {
    return DataType< ::third_project::TurnCamera >::value();
  }
  static const char* value(const ::third_project::TurnCameraRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::third_project::TurnCameraResponse> should match
// service_traits::MD5Sum< ::third_project::TurnCamera >
template<>
struct MD5Sum< ::third_project::TurnCameraResponse>
{
  static const char* value()
  {
    return MD5Sum< ::third_project::TurnCamera >::value();
  }
  static const char* value(const ::third_project::TurnCameraResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::third_project::TurnCameraResponse> should match
// service_traits::DataType< ::third_project::TurnCamera >
template<>
struct DataType< ::third_project::TurnCameraResponse>
{
  static const char* value()
  {
    return DataType< ::third_project::TurnCamera >::value();
  }
  static const char* value(const ::third_project::TurnCameraResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // THIRD_PROJECT_MESSAGE_TURNCAMERA_H