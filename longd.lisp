;Thanks Let Over Lambda
(defun flatten (x)
  (labels ((rec (x acc)
             (cond ((null x) acc)
                   ((atom x) (cons x acc))
                   (t (rec
                       (car x)
                       (rec (cdr x) acc))))))
    (rec x nil)))

(defun long-div (dividend divisor depth)
  (cond
   ((> depth 0)
    (flatten (list
              (truncate (/ dividend divisor))
              (long-div (* 10 (mod dividend divisor)) divisor (- depth 1)))))
   (t ())))
