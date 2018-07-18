(define (gcd a b)
  (if (= b 0) 0
      (gcd b (mod a b)))))
