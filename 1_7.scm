(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
  (else else-clause)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                  x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- 1 (/ (square guess) x))) 0.000001))
  
(define (square x) (* x x))

(define (abs x)
  (if (< x 0)
      (- x)
      x))
      
(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 0.00000002)


