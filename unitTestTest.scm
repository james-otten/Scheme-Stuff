;Test program for unit-test.rtk module
;Copyright 2012 James Otten <james_otten@lavabit.com>

(require "modules/unit-test.rtk")

(define pass '((#t "Yay!") (#t "Yay again!")))
(define fail '((#f "The test (intentionally) failed!") (#t "Never runs")))

(do-tests pass)
(do-tests fail)
