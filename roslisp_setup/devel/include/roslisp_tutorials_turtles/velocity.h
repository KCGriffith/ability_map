// Generated by gencpp from file roslisp_tutorials_turtles/velocity.msg
// DO NOT EDIT!


#ifndef ROSLISP_TUTORIALS_TURTLES_MESSAGE_VELOCITY_H
#define ROSLISP_TUTORIALS_TURTLES_MESSAGE_VELOCITY_H


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
struct velocity_
{
  typedef velocity_<ContainerAllocator> Type;

  velocity_()
    : linear(0.0)
    , angular(0.0)  {
    }
  velocity_(const ContainerAllocator& _alloc)
    : linear(0.0)
    , angular(0.0)  {
  (void)_alloc;
    }



   typedef double _linear_type;
  _linear_type linear;

   typedef double _angular_type;
  _angular_type angular;





  typedef boost::shared_ptr< ::roslisp_tutorials_turtles::velocity_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roslisp_tutorials_turtles::velocity_<ContainerAllocator> const> ConstPtr;

}; // struct velocity_

typedef ::roslisp_tutorials_turtles::velocity_<std::allocator<void> > velocity;

typedef boost::shared_ptr< ::roslisp_tutorials_turtles::velocity > velocityPtr;
typedef boost::shared_ptr< ::roslisp_tutorials_turtles::velocity const> velocityConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roslisp_tutorials_turtles::velocity_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roslisp_tutorials_turtles::velocity_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roslisp_tutorials_turtles::velocity_<ContainerAllocator1> & lhs, const ::roslisp_tutorials_turtles::velocity_<ContainerAllocator2> & rhs)
{
  return lhs.linear == rhs.linear &&
    lhs.angular == rhs.angular;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roslisp_tutorials_turtles::velocity_<ContainerAllocator1> & lhs, const ::roslisp_tutorials_turtles::velocity_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roslisp_tutorials_turtles

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roslisp_tutorials_turtles::velocity_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roslisp_tutorials_turtles::velocity_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roslisp_tutorials_turtles::velocity_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roslisp_tutorials_turtles::velocity_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roslisp_tutorials_turtles::velocity_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roslisp_tutorials_turtles::velocity_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roslisp_tutorials_turtles::velocity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "144a16e4d6b53a0dbadc2e617460a173";
  }

  static const char* value(const ::roslisp_tutorials_turtles::velocity_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x144a16e4d6b53a0dULL;
  static const uint64_t static_value2 = 0xbadc2e617460a173ULL;
};

template<class ContainerAllocator>
struct DataType< ::roslisp_tutorials_turtles::velocity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roslisp_tutorials_turtles/velocity";
  }

  static const char* value(const ::roslisp_tutorials_turtles::velocity_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roslisp_tutorials_turtles::velocity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 linear #forward velocity info\n"
"float64 angular #rotaitional velocity info\n"
;
  }

  static const char* value(const ::roslisp_tutorials_turtles::velocity_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roslisp_tutorials_turtles::velocity_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.linear);
      stream.next(m.angular);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct velocity_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roslisp_tutorials_turtles::velocity_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roslisp_tutorials_turtles::velocity_<ContainerAllocator>& v)
  {
    s << indent << "linear: ";
    Printer<double>::stream(s, indent + "  ", v.linear);
    s << indent << "angular: ";
    Printer<double>::stream(s, indent + "  ", v.angular);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSLISP_TUTORIALS_TURTLES_MESSAGE_VELOCITY_H
