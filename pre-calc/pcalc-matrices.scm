;; Higher order recursions for rows in matrices.
;; Ignoring "map", to have a fun practice.

;; it takes a list (a row from a matrix)
;; operates term thru the row term({ a₁  aₙ})
;; outputs results in a new list.
(define (row-op term row)
	(if (null? row) ()
	    (cons (term (car row))
	          (row-op term (cdr row)))))


;; It goes thru each element of two rows (lists)
;; operates them; it outputs the results
;; in a new row (list)
(define (rows-op term row1 row2)
	(if (null? (and row1 row2)) () 
	    (cons (term (car row1)
	                (car row2))
		  (rows-op term
			   (cdr row1)
			   (cdr row2)))))						          
