;Sum of digits (Euler 16)
;Copyright 2012 James Otten <james_otten@lavabit.com>

;Returns the sum of the digits of n
(define (sum-of-digits n)
  (if (= n 0) 0
      (+ (modulo n 10) (sum-of-digits (/ (- n (modulo n 10)) 10)))))

;Returns b^e for positive e
(define (pow b e)
  (define (pow-iter b e acc)
    (if (= e 0) acc
        (pow-iter b (- e 1) (* b acc))))
  (pow-iter b e 1))

;Unit test
(require "modules/unit-test.rtk")
(assert (= 50 (sum-of-digits '9182376455)) "sum-of-digits failed")
(assert (= 32768 (pow 2 15)) "pow failed")
(assert (= 26 (sum-of-digits (pow 2 15))) "combination of sum-of-digits and pow failed")

;Euler 16: What is the sum of the digits of the number 2^1000?
(sum-of-digits (pow 2 1000))

