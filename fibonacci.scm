;Find the first term in the Fibonacci sequence with 1000 digits (Euler 25)
;Copyright 2012 James Otten <james_otten@lavabit.com>

(require "modules/james-numerical.rtk")
(require "modules/unit-test.rtk")

;Unit test
(assert (= 12 (car (fibonacci-greater-equal-to (- (pow 10 2) 1)))) "fibonacci-greater-equal-to")

;Euler 25: Find the first term in the Fibonacci sequence with 1000 digits
(car (fibonacci-greater-equal-to (- (pow 10 999) 1))) ; (fibonacci-greater-than [999 9s]) which is 1000 digits
