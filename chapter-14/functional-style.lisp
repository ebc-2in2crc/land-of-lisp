; 綺麗な、関数型の部分
(defun add-widget (database widget)
  (cons widget database))

; 汚い、非関数型部分
(defparameter *database* nil)

(defun main-loop ()
  (loop (princ "Please enter the name of a new widget:")
        (setf *database* (add-widget *database* (read)))
        (format t "The database contains the following: ~a~%" *database*)))
