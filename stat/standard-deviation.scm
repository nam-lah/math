;; GistID:95ca719625e6e622148709aca6da923b

(define (squaring item fixed-avrg)
  (if (null? item) 0
	  (+ (square (- (car item)
        					fixed-avrg))
		   (squaring (cdr item)
			      		 fixed-avrg))))

(define (pre-rooting sample fixed-avrg)
  (/ (squaring sample fixed-avrg)
	 (- (length sample) 1)))

(define (rooting sample fixed-avrg)
  (sqrt (pre-rooting sample fixed-avrg)))

(define (standard-dev sample)
  (let ((fixed-average (list-average sample)))
		(rooting sample fixed-average)))
