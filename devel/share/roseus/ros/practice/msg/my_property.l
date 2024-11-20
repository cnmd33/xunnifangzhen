;; Auto-generated. Do not edit!


(when (boundp 'practice::my_property)
  (if (not (find-package "PRACTICE"))
    (make-package "PRACTICE"))
  (shadow 'my_property (find-package "PRACTICE")))
(unless (find-package "PRACTICE::MY_PROPERTY")
  (make-package "PRACTICE::MY_PROPERTY"))

(in-package "ROS")
;;//! \htmlinclude my_property.msg.html


(defclass practice::my_property
  :super ros::object
  :slots (_name _Class ))

(defmethod practice::my_property
  (:init
   (&key
    ((:name __name) "")
    ((:Class __Class) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _Class (round __Class))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:Class
   (&optional __Class)
   (if __Class (setq _Class __Class)) _Class)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _Class
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _Class
       (write-long _Class s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _Class
     (setq _Class (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get practice::my_property :md5sum-) "8c737bea33869d5f32d241f487237be9")
(setf (get practice::my_property :datatype-) "practice/my_property")
(setf (get practice::my_property :definition-)
      "#根据python文件中的内容补全该文件
string name
int32 Class
")



(provide :practice/my_property "8c737bea33869d5f32d241f487237be9")


