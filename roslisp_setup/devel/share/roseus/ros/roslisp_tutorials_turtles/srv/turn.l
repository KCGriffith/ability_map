;; Auto-generated. Do not edit!


(when (boundp 'roslisp_tutorials_turtles::turn)
  (if (not (find-package "ROSLISP_TUTORIALS_TURTLES"))
    (make-package "ROSLISP_TUTORIALS_TURTLES"))
  (shadow 'turn (find-package "ROSLISP_TUTORIALS_TURTLES")))
(unless (find-package "ROSLISP_TUTORIALS_TURTLES::TURN")
  (make-package "ROSLISP_TUTORIALS_TURTLES::TURN"))
(unless (find-package "ROSLISP_TUTORIALS_TURTLES::TURNREQUEST")
  (make-package "ROSLISP_TUTORIALS_TURTLES::TURNREQUEST"))
(unless (find-package "ROSLISP_TUTORIALS_TURTLES::TURNRESPONSE")
  (make-package "ROSLISP_TUTORIALS_TURTLES::TURNRESPONSE"))

(in-package "ROS")





(defclass roslisp_tutorials_turtles::turnRequest
  :super ros::object
  :slots (_angle ))

(defmethod roslisp_tutorials_turtles::turnRequest
  (:init
   (&key
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _angle (float __angle))
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass roslisp_tutorials_turtles::turnResponse
  :super ros::object
  :slots ())

(defmethod roslisp_tutorials_turtles::turnResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass roslisp_tutorials_turtles::turn
  :super ros::object
  :slots ())

(setf (get roslisp_tutorials_turtles::turn :md5sum-) "4edb55038e2b888976a0c0c56935341c")
(setf (get roslisp_tutorials_turtles::turn :datatype-) "roslisp_tutorials_turtles/turn")
(setf (get roslisp_tutorials_turtles::turn :request) roslisp_tutorials_turtles::turnRequest)
(setf (get roslisp_tutorials_turtles::turn :response) roslisp_tutorials_turtles::turnResponse)

(defmethod roslisp_tutorials_turtles::turnRequest
  (:response () (instance roslisp_tutorials_turtles::turnResponse :init)))

(setf (get roslisp_tutorials_turtles::turnRequest :md5sum-) "4edb55038e2b888976a0c0c56935341c")
(setf (get roslisp_tutorials_turtles::turnRequest :datatype-) "roslisp_tutorials_turtles/turnRequest")
(setf (get roslisp_tutorials_turtles::turnRequest :definition-)
      "float64 angle
---

")

(setf (get roslisp_tutorials_turtles::turnResponse :md5sum-) "4edb55038e2b888976a0c0c56935341c")
(setf (get roslisp_tutorials_turtles::turnResponse :datatype-) "roslisp_tutorials_turtles/turnResponse")
(setf (get roslisp_tutorials_turtles::turnResponse :definition-)
      "float64 angle
---

")



(provide :roslisp_tutorials_turtles/turn "4edb55038e2b888976a0c0c56935341c")


