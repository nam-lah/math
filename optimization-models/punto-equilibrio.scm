; (define (costos-variables unidades variable-unitario)
;   (* unidades variable-unitario))


(define punto-equilibrio 
	(lambda (costos-fijos
		 costos-variables
		 precio-unitario)
  (/ costos-fijos (- precio-unitario
                     costos-variables))))


;; constructores de elementos separados
;; del punto de equilibrio:

(define utilidades
	(lambda (ventas
		 egresos)
	(- ventas
	   egresos)))

(define utilidad-unitaria
	(lambda (precio-unitario
		 costo-unitario)
  (- precio-unitario
     costo-unitario)))

(define ventas 
	(lambda (unidades-vendidas
		 precio-unitario)
				
  (* unidades-vendidas
     precio-unitario)))

(define egresos
	(lambda (costos-fijos
		 costos-variables)
				
  (+ costos-fijos
     costos-variables)))
 
;; Funciones para computar estimaciones: 

(define resultado-estimado
	(lambda (equilibrio
		 demanda-estimada)
	  
	  (- demanda-estimadae
	     quilibrio)))
				       
(define utilidad-estimada
	(lambda (demanda-estimada
		 utilidad-unitaria)
	  (* demanda-estimada
