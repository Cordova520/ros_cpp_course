; Auto-generated. Do not edit!


(cl:in-package final_project-msg)


;//! \htmlinclude Navigate2DFeedback.msg.html

(cl:defclass <Navigate2DFeedback> (roslisp-msg-protocol:ros-message)
  ((distance_to_point
    :reader distance_to_point
    :initarg :distance_to_point
    :type cl:float
    :initform 0.0))
)

(cl:defclass Navigate2DFeedback (<Navigate2DFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Navigate2DFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Navigate2DFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name final_project-msg:<Navigate2DFeedback> is deprecated: use final_project-msg:Navigate2DFeedback instead.")))

(cl:ensure-generic-function 'distance_to_point-val :lambda-list '(m))
(cl:defmethod distance_to_point-val ((m <Navigate2DFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader final_project-msg:distance_to_point-val is deprecated.  Use final_project-msg:distance_to_point instead.")
  (distance_to_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Navigate2DFeedback>) ostream)
  "Serializes a message object of type '<Navigate2DFeedback>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_to_point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Navigate2DFeedback>) istream)
  "Deserializes a message object of type '<Navigate2DFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_point) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Navigate2DFeedback>)))
  "Returns string type for a message object of type '<Navigate2DFeedback>"
  "final_project/Navigate2DFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Navigate2DFeedback)))
  "Returns string type for a message object of type 'Navigate2DFeedback"
  "final_project/Navigate2DFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Navigate2DFeedback>)))
  "Returns md5sum for a message object of type '<Navigate2DFeedback>"
  "c9bb2981926f85b65fe1e8c193c945d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Navigate2DFeedback)))
  "Returns md5sum for a message object of type 'Navigate2DFeedback"
  "c9bb2981926f85b65fe1e8c193c945d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Navigate2DFeedback>)))
  "Returns full string definition for message of type '<Navigate2DFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Feedback~%float32 distance_to_point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Navigate2DFeedback)))
  "Returns full string definition for message of type 'Navigate2DFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Feedback~%float32 distance_to_point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Navigate2DFeedback>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Navigate2DFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'Navigate2DFeedback
    (cl:cons ':distance_to_point (distance_to_point msg))
))
