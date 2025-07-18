
(cl:in-package :asdf)

(defsystem "flexcraft_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "ArmGoal" :depends-on ("_package_ArmGoal"))
    (:file "_package_ArmGoal" :depends-on ("_package"))
    (:file "ClusterOctomap" :depends-on ("_package_ClusterOctomap"))
    (:file "_package_ClusterOctomap" :depends-on ("_package"))
    (:file "ComputeNBV" :depends-on ("_package_ComputeNBV"))
    (:file "_package_ComputeNBV" :depends-on ("_package"))
    (:file "GetPcl" :depends-on ("_package_GetPcl"))
    (:file "_package_GetPcl" :depends-on ("_package"))
    (:file "ResetOctomap" :depends-on ("_package_ResetOctomap"))
    (:file "_package_ResetOctomap" :depends-on ("_package"))
    (:file "SampleViews" :depends-on ("_package_SampleViews"))
    (:file "_package_SampleViews" :depends-on ("_package"))
    (:file "SaveOctomap" :depends-on ("_package_SaveOctomap"))
    (:file "_package_SaveOctomap" :depends-on ("_package"))
    (:file "SemiCylinder" :depends-on ("_package_SemiCylinder"))
    (:file "_package_SemiCylinder" :depends-on ("_package"))
  ))