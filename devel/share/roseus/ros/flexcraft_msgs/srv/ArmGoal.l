;; Auto-generated. Do not edit!


(when (boundp 'flexcraft_msgs::ArmGoal)
  (if (not (find-package "FLEXCRAFT_MSGS"))
    (make-package "FLEXCRAFT_MSGS"))
  (shadow 'ArmGoal (find-package "FLEXCRAFT_MSGS")))
(unless (find-package "FLEXCRAFT_MSGS::ARMGOAL")
  (make-package "FLEXCRAFT_MSGS::ARMGOAL"))
(unless (find-package "FLEXCRAFT_MSGS::ARMGOALREQUEST")
  (make-package "FLEXCRAFT_MSGS::ARMGOALREQUEST"))
(unless (find-package "FLEXCRAFT_MSGS::ARMGOALRESPONSE")
  (make-package "FLEXCRAFT_MSGS::ARMGOALRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass flexcraft_msgs::ArmGoalRequest
  :super ros::object
  :slots (_goal_pose ))

(defmethod flexcraft_msgs::ArmGoalRequest
  (:init
   (&key
    ((:goal_pose __goal_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _goal_pose __goal_pose)
   self)
  (:goal_pose
   (&rest __goal_pose)
   (if (keywordp (car __goal_pose))
       (send* _goal_pose __goal_pose)
     (progn
       (if __goal_pose (setq _goal_pose (car __goal_pose)))
       _goal_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _goal_pose
    (send _goal_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _goal_pose
       (send _goal_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _goal_pose
     (send _goal_pose :deserialize buf ptr-) (incf ptr- (send _goal_pose :serialization-length))
   ;;
   self)
  )

(defclass flexcraft_msgs::ArmGoalResponse
  :super ros::object
  :slots (_success ))

(defmethod flexcraft_msgs::ArmGoalResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass flexcraft_msgs::ArmGoal
  :super ros::object
  :slots ())

(setf (get flexcraft_msgs::ArmGoal :md5sum-) "5d29b6219247a57177fcffb880bc2f7e")
(setf (get flexcraft_msgs::ArmGoal :datatype-) "flexcraft_msgs/ArmGoal")
(setf (get flexcraft_msgs::ArmGoal :request) flexcraft_msgs::ArmGoalRequest)
(setf (get flexcraft_msgs::ArmGoal :response) flexcraft_msgs::ArmGoalResponse)

(defmethod flexcraft_msgs::ArmGoalRequest
  (:response () (instance flexcraft_msgs::ArmGoalResponse :init)))

(setf (get flexcraft_msgs::ArmGoalRequest :md5sum-) "5d29b6219247a57177fcffb880bc2f7e")
(setf (get flexcraft_msgs::ArmGoalRequest :datatype-) "flexcraft_msgs/ArmGoalRequest")
(setf (get flexcraft_msgs::ArmGoalRequest :definition-)
      "geometry_msgs/Pose goal_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success
")

(setf (get flexcraft_msgs::ArmGoalResponse :md5sum-) "5d29b6219247a57177fcffb880bc2f7e")
(setf (get flexcraft_msgs::ArmGoalResponse :datatype-) "flexcraft_msgs/ArmGoalResponse")
(setf (get flexcraft_msgs::ArmGoalResponse :definition-)
      "geometry_msgs/Pose goal_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success
")



(provide :flexcraft_msgs/ArmGoal "5d29b6219247a57177fcffb880bc2f7e")


