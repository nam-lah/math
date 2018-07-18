;; will take a number, the reason (%)
;; and it'll find the whole from which
;; number is reason of.

(define (full-percent number percent)
    (* number (/ 100.0 percent)))
