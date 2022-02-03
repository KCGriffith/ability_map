
(cl:in-package :asdf)

(defsystem "roslisp_tutorials_turtles-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "move" :depends-on ("_package_move"))
    (:file "_package_move" :depends-on ("_package"))
    (:file "turn" :depends-on ("_package_turn"))
    (:file "_package_turn" :depends-on ("_package"))
  ))