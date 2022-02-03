;; Auto-generated. Do not edit!


(when (boundp 'roslisp_tutorials_turtles::move)
  (if (not (find-package "ROSLISP_TUTORIALS_TURTLES"))
    (make-package "ROSLISP_TUTORIALS_TURTLES"))
  (shadow 'move (find-package "ROSLISP_TUTORIALS_TURTLES")))
(unless (find-package "ROSLISP_TUTORIALS_TURTLES::MOVE")
  (make-package "ROSLISP_TUTORIALS_TURTLES::MOVE"))
(unless (find-package "ROSLISP_TUTORIALS_TURTLES::MOVEREQUEST")
  (make-package "ROSLISP_TUTORIALS_TURTLES::MOVEREQUEST"))
(unless (find-package "ROSLISP_TUTORIALS_TURTLES::MOVERESPONSE")
  (make-package "ROSLISP_TUTORIALS_TURTLES::MOVERESPONSE"))

(in-package "ROS")





(defclass roslisp_tutorials_turtles::moveRequest
  :super ros::object
  :slots (_distance ))

(defmethod roslisp_tutorials_turtles::moveRequest
  (:init
   (&key
    ((:distance __distance) 0)
    )
   (send-super :init)
   (setq _distance (round __distance))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; uint32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _distance
       (write-long _distance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _distance
     (setq _distance (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roslisp_tutorials_turtles::moveResponse
  :super ros::object
  :slots ())

(defmethod roslisp_tutorials_turtles::moveResponse
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

(defclass roslisp_tutorials_turtles::move
  :super ros::object
  :slots ())

(setf (get roslisp_tutorials_turtles::move :md5sum-) "b2cb89f922c5d07784b533cfabb72389")
(setf (get roslisp_tutorials_turtles::move :datatype-) "roslisp_tutorials_turtles/move")
(setf (get roslisp_tutorials_turtles::move :request) roslisp_tutorials_turtles::moveRequest)
(setf (get roslisp_tutorials_turtles::move :response) roslisp_tutorials_turtles::moveResponse)

(defmethod roslisp_tutorials_turtles::moveRequest
  (:response () (instance roslisp_tutorials_turtles::moveResponse :init)))

(setf (get roslisp_tutorials_turtles::moveRequest :md5sum-) "b2cb89f922c5d07784b533cfabb72389")
(setf (get roslisp_tutorials_turtles::moveRequest :datatype-) "roslisp_tutorials_turtles/moveRequest")
(setf (get roslisp_tutorials_turtles::moveRequest :definition-)
      "uint32 distance
---
")

(setf (get roslisp_tutorials_turtles::moveResponse :md5sum-) "b2cb89f922c5d07784b533cfabb72389")
(setf (get roslisp_tutorials_turtles::moveResponse :datatype-) "roslisp_tutorials_turtles/moveResponse")
(setf (get roslisp_tutorials_turtles::moveResponse :definition-)
      "uint32 distance
---
")



(provide :roslisp_tutorials_turtles/move "b2cb89f922c5d07784b533cfabb72389")


