;; Auto-generated. Do not edit!


(when (boundp 'roslisp_tutorials_turtles::velocity)
  (if (not (find-package "ROSLISP_TUTORIALS_TURTLES"))
    (make-package "ROSLISP_TUTORIALS_TURTLES"))
  (shadow 'velocity (find-package "ROSLISP_TUTORIALS_TURTLES")))
(unless (find-package "ROSLISP_TUTORIALS_TURTLES::VELOCITY")
  (make-package "ROSLISP_TUTORIALS_TURTLES::VELOCITY"))

(in-package "ROS")
;;//! \htmlinclude velocity.msg.html


(defclass roslisp_tutorials_turtles::velocity
  :super ros::object
  :slots (_linear _angular ))

(defmethod roslisp_tutorials_turtles::velocity
  (:init
   (&key
    ((:linear __linear) 0.0)
    ((:angular __angular) 0.0)
    )
   (send-super :init)
   (setq _linear (float __linear))
   (setq _angular (float __angular))
   self)
  (:linear
   (&optional __linear)
   (if __linear (setq _linear __linear)) _linear)
  (:angular
   (&optional __angular)
   (if __angular (setq _angular __angular)) _angular)
  (:serialization-length
   ()
   (+
    ;; float64 _linear
    8
    ;; float64 _angular
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _linear
       (sys::poke _linear (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular
       (sys::poke _angular (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _linear
     (setq _linear (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular
     (setq _angular (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get roslisp_tutorials_turtles::velocity :md5sum-) "144a16e4d6b53a0dbadc2e617460a173")
(setf (get roslisp_tutorials_turtles::velocity :datatype-) "roslisp_tutorials_turtles/velocity")
(setf (get roslisp_tutorials_turtles::velocity :definition-)
      "float64 linear #forward velocity info
float64 angular #rotaitional velocity info
")



(provide :roslisp_tutorials_turtles/velocity "144a16e4d6b53a0dbadc2e617460a173")


