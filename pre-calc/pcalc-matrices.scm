;; Recursive procedures for operating matrices.
;; Ignoring "map". 

(define (dual-matrix-op term mat1 mat2)
	(if (null? (and mat1 mat2)) () 
	    (cons (term (car mat1)
	                (car mat2))
						(dual-matrix-op term
						           (cdr mat1)
						           (cdr mat2)))))
						          
(define (matrix-op term mat)
	(if (null? mat) ()
	    (cons (term (car mat))
	          (matrix-op term (cdr mat)))))
