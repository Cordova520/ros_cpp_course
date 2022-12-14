;; Auto-generated. Do not edit!


(when (boundp 'final_project::Navigate2DFeedback)
  (if (not (find-package "FINAL_PROJECT"))
    (make-package "FINAL_PROJECT"))
  (shadow 'Navigate2DFeedback (find-package "FINAL_PROJECT")))
(unless (find-package "FINAL_PROJECT::NAVIGATE2DFEEDBACK")
  (make-package "FINAL_PROJECT::NAVIGATE2DFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude Navigate2DFeedback.msg.html


(defclass final_project::Navigate2DFeedback
  :super ros::object
  :slots (_distance_to_point ))

(defmethod final_project::Navigate2DFeedback
  (:init
   (&key
    ((:distance_to_point __distance_to_point) 0.0)
    )
   (send-super :init)
   (setq _distance_to_point (float __distance_to_point))
   self)
  (:distance_to_point
   (&optional __distance_to_point)
   (if __distance_to_point (setq _distance_to_point __distance_to_point)) _distance_to_point)
  (:serialization-length
   ()
   (+
    ;; float32 _distance_to_point
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _distance_to_point
       (sys::poke _distance_to_point (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _distance_to_point
     (setq _distance_to_point (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get final_project::Navigate2DFeedback :md5sum-) "c9bb2981926f85b65fe1e8c193c945d5")
(setf (get final_project::Navigate2DFeedback :datatype-) "final_project/Navigate2DFeedback")
(setf (get final_project::Navigate2DFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#Feedback
float32 distance_to_point

")



(provide :final_project/Navigate2DFeedback "c9bb2981926f85b65fe1e8c193c945d5")


