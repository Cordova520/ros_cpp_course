; Auto-generated. Do not edit!


(cl:in-package final_project-msg)


;//! \htmlinclude Navigate2DActionGoal.msg.html

(cl:defclass <Navigate2DActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type final_project-msg:Navigate2DGoal
    :initform (cl:make-instance 'final_project-msg:Navigate2DGoal)))
)

(cl:defclass Navigate2DActionGoal (<Navigate2DActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Navigate2DActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Navigate2DActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name final_project-msg:<Navigate2DActionGoal> is deprecated: use final_project-msg:Navigate2DActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Navigate2DActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader final_project-msg:header-val is deprecated.  Use final_project-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <Navigate2DActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader final_project-msg:goal_id-val is deprecated.  Use final_project-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <Navigate2DActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader final_project-msg:goal-val is deprecated.  Use final_project-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Navigate2DActionGoal>) ostream)
  "Serializes a message object of type '<Navigate2DActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Navigate2DActionGoal>) istream)
  "Deserializes a message object of type '<Navigate2DActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Navigate2DActionGoal>)))
  "Returns string type for a message object of type '<Navigate2DActionGoal>"
  "final_project/Navigate2DActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Navigate2DActionGoal)))
  "Returns string type for a message object of type 'Navigate2DActionGoal"
  "final_project/Navigate2DActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Navigate2DActionGoal>)))
  "Returns md5sum for a message object of type '<Navigate2DActionGoal>"
  "215e9c98c1bdc2bd19e1a8eb6bc51969")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Navigate2DActionGoal)))
  "Returns md5sum for a message object of type 'Navigate2DActionGoal"
  "215e9c98c1bdc2bd19e1a8eb6bc51969")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Navigate2DActionGoal>)))
  "Returns full string definition for message of type '<Navigate2DActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%Navigate2DGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: final_project/Navigate2DGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Goal~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Navigate2DActionGoal)))
  "Returns full string definition for message of type 'Navigate2DActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%Navigate2DGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: final_project/Navigate2DGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Goal~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Navigate2DActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Navigate2DActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'Navigate2DActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
