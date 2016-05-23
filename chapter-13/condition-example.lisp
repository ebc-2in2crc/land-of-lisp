(define-condition foo () ()
  (:report (lambda (condition stream)
             (princ "Stop Fooing around, numbskull!" stream))))

(defun bad-function ()
  (error 'foo))

(defun handle-bad-function ()
  (handler-case (bad-function)
    (foo () "somebody signaled foo!")
    (bar () "sombody signaled bar!")))

(defun unwind-protect-sample ()
  (unwind-protect (/ 1 0)
    (princ "I need to say 'flubyduby' matter what")))
