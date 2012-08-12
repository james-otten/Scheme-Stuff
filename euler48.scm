;Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000 (Euler 48)
;Copyright 2012 James Otten <james_otten@lavabit.com>

(require "modules/james-numerical.rtk")
(require "modules/unit-test.rtk")

;Sum of the series
(define (sum-of-series max)
  (define (sum-of-series-iter max n sum)
    (if (= max n) (+ sum (pow n n))
                (sum-of-series-iter max (+ n 1) (+ (pow n n) sum))))
  (sum-of-series-iter max 1 0))

;Test
(assert (= (sum-of-series 10) 10405071317) "sum-of-series failed euler example")

;Euler 48
(sum-of-series 1000)
