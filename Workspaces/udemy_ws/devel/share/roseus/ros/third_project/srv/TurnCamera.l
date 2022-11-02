;; Auto-generated. Do not edit!


(when (boundp 'third_project::TurnCamera)
  (if (not (find-package "THIRD_PROJECT"))
    (make-package "THIRD_PROJECT"))
  (shadow 'TurnCamera (find-package "THIRD_PROJECT")))
(unless (find-package "THIRD_PROJECT::TURNCAMERA")
  (make-package "THIRD_PROJECT::TURNCAMERA"))
(unless (find-package "THIRD_PROJECT::TURNCAMERAREQUEST")
  (make-package "THIRD_PROJECT::TURNCAMERAREQUEST"))
(unless (find-package "THIRD_PROJECT::TURNCAMERARESPONSE")
  (make-package "THIRD_PROJECT::TURNCAMERARESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass third_project::TurnCameraRequest
  :super ros::object
  :slots (_deg_turn ))

(defmethod third_project::TurnCameraRequest
  (:init
   (&key
    ((:deg_turn __deg_turn) 0.0)
    )
   (send-super :init)
   (setq _deg_turn (float __deg_turn))
   self)
  (:deg_turn
   (&optional __deg_turn)
   (if __deg_turn (setq _deg_turn __deg_turn)) _deg_turn)
  (:serialization-length
   ()
   (+
    ;; float32 _deg_turn
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _deg_turn
       (sys::poke _deg_turn (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _deg_turn
     (setq _deg_turn (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass third_project::TurnCameraResponse
  :super ros::object
  :slots (_camera_image ))

(defmethod third_project::TurnCameraResponse
  (:init
   (&key
    ((:camera_image __camera_image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _camera_image __camera_image)
   self)
  (:camera_image
   (&rest __camera_image)
   (if (keywordp (car __camera_image))
       (send* _camera_image __camera_image)
     (progn
       (if __camera_image (setq _camera_image (car __camera_image)))
       _camera_image)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _camera_image
    (send _camera_image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _camera_image
       (send _camera_image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _camera_image
     (send _camera_image :deserialize buf ptr-) (incf ptr- (send _camera_image :serialization-length))
   ;;
   self)
  )

(defclass third_project::TurnCamera
  :super ros::object
  :slots ())

(setf (get third_project::TurnCamera :md5sum-) "48e9c72001527a85ebcc47fcec8f9237")
(setf (get third_project::TurnCamera :datatype-) "third_project/TurnCamera")
(setf (get third_project::TurnCamera :request) third_project::TurnCameraRequest)
(setf (get third_project::TurnCamera :response) third_project::TurnCameraResponse)

(defmethod third_project::TurnCameraRequest
  (:response () (instance third_project::TurnCameraResponse :init)))

(setf (get third_project::TurnCameraRequest :md5sum-) "48e9c72001527a85ebcc47fcec8f9237")
(setf (get third_project::TurnCameraRequest :datatype-) "third_project/TurnCameraRequest")
(setf (get third_project::TurnCameraRequest :definition-)
      "float32 deg_turn
---
sensor_msgs/Image camera_image

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")

(setf (get third_project::TurnCameraResponse :md5sum-) "48e9c72001527a85ebcc47fcec8f9237")
(setf (get third_project::TurnCameraResponse :datatype-) "third_project/TurnCameraResponse")
(setf (get third_project::TurnCameraResponse :definition-)
      "float32 deg_turn
---
sensor_msgs/Image camera_image

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")



(provide :third_project/TurnCamera "48e9c72001527a85ebcc47fcec8f9237")


