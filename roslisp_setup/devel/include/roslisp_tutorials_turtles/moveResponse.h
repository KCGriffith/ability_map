// Generated by gencpp from file roslisp_tutorials_turtles/moveResponse.msg
// DO NOT EDIT!


#ifndef ROSLISP_TUTORIALS_TURTLES_MESSAGE_MOVERESPONSE_H
#define ROSLISP_TUTORIALS_TURTLES_MESSAGE_MOVERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roslisp_tutorials_turtles
{
template <class ContainerAllocator>
struct moveResponse_
{
  typedef moveResponse_<ContainerAllocator> Type;

  moveResponse_()
    {
    }
  moveResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::roslisp_tutorials_turtles::moveResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roslisp_tutorials_turtles::moveResponse_<ContainerAllocator> const> ConstPtr;

}; // struct moveResponse_

typedef ::roslisp_tutorials_turtles::moveResponse_<std::allocator<void> > moveResponse;

typedef boost::shared_ptr< ::roslisp_tutorials_turtles::moveResponse > moveResponsePtr;
typedef boost::shared_ptr< ::roslisp_tutorials_turtles::moveResponse const> moveResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roslisp_tutorials_turtles::moveResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roslisp_tutorials_turtles::moveResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace roslisp_tutorials_turtles

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roslisp_tutorials_turtles::moveResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roslisp_tutorials_turtles::moveResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roslisp_tutorials_turtles::moveResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roslisp_tutorials_turtles::moveResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roslisp_tutorials_turtles::moveResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roslisp_tutorials_turtles::moveResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roslisp_tutorials_turtles::moveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::roslisp_tutorials_turtles::moveResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::roslisp_tutorials_turtles::moveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roslisp_tutorials_turtles/moveResponse";
  }

  static const char* value(const ::roslisp_tutorials_turtles::moveResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roslisp_tutorials_turtles::moveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::roslisp_tutorials_turtles::moveResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roslisp_tutorials_turtles::moveResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct moveResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roslisp_tutorials_turtles::moveResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::roslisp_tutorials_turtles::moveResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ROSLISP_TUTORIALS_TURTLES_MESSAGE_MOVERESPONSE_H