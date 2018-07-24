;; Higher order recursions for rows in matrices.
;; Ignoring "map", to have a fun practice.

;; it takes a list (a row from a matrix)
;; operates term thru the row term({ a₁  aₙ})
;; outputs results in a new list.
(define (row-op term mat)
	(if (null? mat) ()
	    (cons (term (car mat))
	          (row-op term (cdr mat)))))


;; It goes thru each element of two rows (lists)
;; operates them; it outputs the results
;; in a new row (list)
(define (rows-op term mat1 mat2)
	(if (null? (and mat1 mat2)) () 
	    (cons (term (car mat1)
	                (car mat2))
		  (rows-op term
			   (cdr mat1)
			   (cdr mat2)))))
						          
