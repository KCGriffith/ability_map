
(in-package :lturtle)

(defun start-node ()
  (roslisp:start-ros-node "lispturtles"))

(defun stop-node ()
  (roslisp:shutdown-ros-node))

(defun reset-turtlesim ()
  (roslisp:call-service "/reset" 'std_srvs-srv:empty))

(defun clear-turtlesim ()
  (roslisp:call-service "/clear" 'std_srvs-srv:empty))

(defun spawn-turtle (&key (x 0) (y 0) (theta 0))
  (turtlesim-srv:name
   (roslisp:call-service "/spawn" 'turtlesim-srv:spawn
                         :x x :y y :theta theta)))

(defun unspawn-turtle (name)
  (roslisp:call-service "/kill" 'turtlesim-srv:kill :name name))

(defun set-turtle-velocity (name &key (lin 0) (ang 0))
  "Publishes a velocity command once."
  (let ((pub (advertise
              (concatenate 'string "/" name "/cmd_vel")
              "geometry_msgs/Twist")))
    (publish pub (make-msg "geometry_msgs/Twist"
                           (x linear) lin (z angular) ang))))

(defun move (name &key (dist 0))
  (roslisp_tutorials_turtles-srv:move
    (roslisp:call-service "/moveme" 'roslisp_tutorials_turtles-srv:move
                          :distance dist)))

(defun turn (name &key (deg 0))
  (roslisp_tutorials_turtles-srv:turn
    (roslisp:call-service "/turnme" 'roslisp_tutorials_turtles-srv:turn
                          :deg dist)))

(defun set-pen (name &key (r 0) (g 0) (b 0) (width 1) (off 0))
  "Changes the color of the turtle trajectory."
  ;(setf service '(intern (roslisp:get-param "srv")))
  ;(setf service '(roslisp:get-param "srv"))
  (roslisp:call-service
   (concatenate 'string "/" name "/set_pen")
   ;'turtlesim-srv:setpen :r r :g g :b b :width width :off off))
   ;'turtlesim-srv:service :r r :g g :b b :width width :off off))
   ;'turtlesim-srv:(intern (roslisp:get-param "srv")) :r r :g g :b b :width width :off off))
   (read-from-string (roslisp:get-param "other_srv")) :r r :g g :b b :width width :off off))
   ;(roslisp:get-param "other_srv") :r r :g g :b b :width width :off off))

(defun turtle-circle ()
  "main function, draws a circle"
  (with-ros-node ("mynode")
    (set-pen "turtle1" :r 40 :g 90 :b 10)
    (set-pen "turtle1" :r (roslisp:get-param "r") :g (roslisp:get-param "g") :b (roslisp:get-param "b"))
    (dotimes (x 10)
      ;(set-turtle-velocity "turtle1" :lin 1 :ang 0.9)
      (set-turtle-velocity (roslisp:get-param "tName") :lin 1 :ang 0.9)
      (sleep 1))))


(defun move-turtle ()
  (with-ros-node ("moveTester")
    (set-pen "turtle1" :r 40 :g 90 :b 10)
    (set-pen "turtle1" :r (roslisp:get-param "r") :g (roslisp:get-param "g") :b (roslisp:get-param "b"))
    (move "turtle1" :dist 3)
    (sleep 1)))

(defun turn-turtle ()
  (with-ros-node ("moveTester")
    (set-pen "turtle1" :r 40 :g 90 :b 10)
    (set-pen "turtle1" :r (roslisp:get-param "r") :g (roslisp:get-param "g") :b (roslisp:get-param "b"))
    (turn "turtle1" :dist 90)
    (sleep 1)))