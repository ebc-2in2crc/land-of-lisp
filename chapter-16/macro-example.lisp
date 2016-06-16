(defmacro let1 (var val &body body)
  `(let ((,var ,val))
     ,@body))

(defmacro split (val yes no)
  (let1 g (gensym)
   `(let1 ,g ,val
      (if ,g
          (let ((head (car ,g))
                (tail (cdr ,g)))
            ,yes)
          ,no))))

(defun my-length (lst)
  (labels ((f (lst acc)
             (split lst
               (f tail (1+ acc))
               acc)))
    (f lst 0)))
