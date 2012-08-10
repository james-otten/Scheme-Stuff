;My factorial example
;Copyright 2012 James Otten <james_otten@lavabit.com>

;_The_ example of factorials in scheme
(define (basic-fac n)
  (cond
    ((= n 0) 1)
    (else (* n (fac (- n 1))))))

;Who needs cond?
(define (fac n)
  (if (= n 0) 1 (* n (fac (- n 1)))))

;Lets be easy on the stack: iteratively and local function def
(define (factorial n)
  (define (fact-iter n product)
    (if (= n 0) product (fact-iter (- n 1) (* product n))))
  (fact-iter n 1))

(basic-fac 10)
(fac 10)
(factorial 10)
