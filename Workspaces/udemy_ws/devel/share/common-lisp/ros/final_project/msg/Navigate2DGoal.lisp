; Auto-generated. Do not edit!


(cl:in-package final_project-msg)


;//! \htmlinclude Navigate2DGoal.msg.html

(cl:defclass <Navigate2DGoal> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass Navigate2DGoal (<Navigate2DGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Navigate2DGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Navigate2DGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name final_project-msg:<Navigate2DGoal> is deprecated: use final_project-msg:Navigate2DGoal instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <Navigate2DGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader final_project-msg:point-val is deprecated.  Use final_project-msg:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Navigate2DGoal>) ostream)
  "Serializes a message object of type '<Navigate2DGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Navigate2DGoal>) istream)
  "Deserializes a message object of type '<Navigate2DGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Navigate2DGoal>)))
  "Returns string type for a message object of type '<Navigate2DGoal>"
  "final_project/Navigate2DGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Navigate2DGoal)))
  "Returns string type for a message object of type 'Navigate2DGoal"
  "final_project/Navigate2DGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Navigate2DGoal>)))
  "Returns md5sum for a message object of type '<Navigate2DGoal>"
  "a7c84ff13976aa04656e56e300124444")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Navigate2DGoal)))
  "Returns md5sum for a message object of type 'Navigate2DGoal"
  "a7c84ff13976aa04656e56e300124444")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Navigate2DGoal>)))
  "Returns full string definition for message of type '<Navigate2DGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Goal~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Navigate2DGoal)))
  "Returns full string definition for message of type 'Navigate2DGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Goal~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Navigate2DGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Navigate2DGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'Navigate2DGoal
    (cl:cons ':point (point msg))
))
