;Difference between square of sum and sum of squares (Euler 6)
;Copyright 2012 James Otten <james_otten@lavabit.com>

(define (sum-of-squares n)
  (if (= n 1)
      1
      (+ (* n n) (sum-of-squares (- n 1)))))

(define (square-of-sum n)
  (define (square d)
    (* d d))
  (define (range-sum m)
    (if (= m 1)
        1
        (+ m (range-sum (- m 1)))))
  (square (range-sum n)))

(define number 100)
(- (square-of-sum number) (sum-of-squares number))
