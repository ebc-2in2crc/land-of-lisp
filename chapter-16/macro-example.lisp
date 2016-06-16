(defmacro let1 (var val &body body)
  `(let ((,var ,val))
     ,@body))

(defmacro split (val yes no)
  `(let1 x ,val
     (if x
         (let ((head (car x))
               (tail (cdr x)))
           ,yes)
         ,no)))

(defun my-length (lst)
  (labels ((f (lst acc)
             (split lst
               (f tail (1+ acc))
               acc)))
    (f lst 0)))
