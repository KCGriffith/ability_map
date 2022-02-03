
;; tags for using the snippet in wiki
;; %Tag(wikiTalker)%
(asdf:defsystem turtles-system
  :depends-on (roslisp
               turtlesim-msg
               geometry_msgs-msg
               turtlesim-srv
               roslisp_tutorials_turtles-srv)
  :components
  ((:module "turtles"
    :components
    ((:file "package")
     (:file "turtles-core" :depends-on ("package"))))))
;; %EndTag(wikiTalker)%
;(ros-load:load-system "roslisp_tutorials_turtles" "turtles-system")