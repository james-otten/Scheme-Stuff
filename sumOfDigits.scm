;Sum of digits (Euler 16)
;Copyright 2012 James Otten <james_otten@lavabit.com>

(require "modules/unit-test.rtk")
(require "modules/james-numerical.rtk")

;Unit test
(assert (= 50 (sum-of-digits '9182376455)) "sum-of-digits failed")
(assert (= 32768 (pow 2 15)) "pow failed")
(assert (= 26 (sum-of-digits (pow 2 15))) "combination of sum-of-digits and pow failed")
(assert (= 27 (sum-of-digits (factorial 10))) "sum-of-digits of factorial failed")

;Euler 16: What is the sum of the digits of the number 2^1000?
(sum-of-digits (pow 2 1000))

;Euler 20: Find the sum of the digits in the number 100!
(sum-of-digits (factorial 100))
