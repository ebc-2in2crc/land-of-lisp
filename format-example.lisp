(defun random-animal ()
  (nth (random 5) '("dog" "tick" "tiger" "walrus" "kangaroo")))

(defun format-table ()
  (loop repeat 10
        do (format t "~5t~a ~15t~a ~25t~a~%"
                   (random-animal)
                   (random-animal)
                   (random-animal))))

(defun format-paddingtable ()
  (loop repeat 10
        do (format t "~30<~a~;~a~;~a~>~%"
                   (random-animal)
                   (random-animal)
                   (random-animal))))

(defun format-centeringtable ()
  (loop repeat 10
        do (format t "~30:@<~a~;~a~;~a~>~%"
                   (random-animal)
                   (random-animal)
                   (random-animal))))

(defun format-col-centeringtable ()
  (loop repeat 10
        do (format t "~10:@<~a~>~10:@<~a~>~10:@<~a~>~%"
                   (random-animal)
                   (random-animal)
                   (random-animal))))

(defparameter *animals* (loop repeat 10 collect (random-animal)))

(defun sequence-each-format ()
  (format t "~{I see a ~a!~}" *animals*)
  (fresh-line)
  (format t "~{I see a ~a... or was it a ~a?~&~}" *animals*))
