(deftemplate credit-calification
	(slot frecuenciaUsoTC) 
	(slot pagaATiempo)
	(slot plazoAlto)
	(slot plazoBajo)
        (slot tuvoCreditos)
        (slot edad)
        (slot estadoCivil)
        (slot poseeTarjetaCredito)
        (slot montoAlto)
        (slot montoBajo)
)


(defrule rule-one
	(credit-calification (frecuenciaUsoTC ?frecuenciaUsoTC))
=>
      (if (= ?frecuenciaUsoTC true)
      then
      (printout t "rule 1: credit yes"  crlf)))
  
(defrule rule-two
	(credit-calification (frecuenciaUsoTC ?frecuenciaUsoTC) (pagaATiempo ?pagaATiempo) (plazoAlto ?plazoAlto) (tuvoCreditos ?tuvoCreditos))
=>
   (if (and (= ?frecuenciaUsoTC false) (= ?pagaATiempo true) (= ?plazoAlto true) (= ?tuvoCreditos true))
      then
      (printout t "rule 2: credit no"  crlf)))

(defrule rule-three
	(credit-calification (frecuenciaUsoTC ?frecuenciaUsoTC) (pagaATiempo ?pagaATiempo) (plazoAlto ?plazoAlto) (tuvoCreditos ?tuvoCreditos))
=>
   (if (and (= ?frecuenciaUsoTC false) (= ?pagaATiempo true) (= ?plazoAlto true) (= ?tuvoCreditos false))
      then
      (printout t "rule 3: credit yes"  crlf)))
    
(defrule rule-four
	(credit-calification (frecuenciaUsoTC ?frecuenciaUsoTC) (pagaATiempo ?pagaATiempo) (plazoAlto ?plazoAlto) (plazoBajo ?plazoBajo) (edad ?edad))
=>
   (if (and (= ?frecuenciaUsoTC false) (= ?pagaATiempo true) (= ?plazoAlto false) (= ?plazoBajo true) (= ?edad A))
      then
      (printout t "rule 4: credit yes"  crlf)))

(defrule rule-five
	(credit-calification (frecuenciaUsoTC ?frecuenciaUsoTC) (pagaATiempo ?pagaATiempo) (plazoAlto ?plazoAlto) (plazoBajo ?plazoBajo) (edad ?edad) (estadoCivil ?estadoCivil))
=>
   (if (and (= ?frecuenciaUsoTC false) (= ?pagaATiempo true) (= ?plazoAlto false) (= ?plazoBajo true) (= ?edad J) (= ?estadoCivil S))
      then
      (printout t "rule 5: credit yes"  crlf)))

(defrule rule-six
	(credit-calification (frecuenciaUsoTC ?frecuenciaUsoTC)(pagaATiempo ?pagaATiempo) (plazoBajo ?plazoBajo) (edad ?edad) (estadoCivil ?estadoCivil) (poseeTarjetaCredito ?poseeTarjetaCredito))
=>
   (if (and (= ?frecuenciaUsoTC false) (= ?pagaATiempo true) (= ?plazoBajo true) (= ?edad J) (= ?estadoCivil C)(= ?poseeTarjetaCredito true))
      then
      (printout t "rule 6: credit yes"  crlf)))

(defrule rule-seven
	(credit-calification (frecuenciaUsoTC ?frecuenciaUsoTC)(pagaATiempo ?pagaATiempo) (plazoBajo ?plazoBajo) (edad ?edad) (estadoCivil ?estadoCivil) (poseeTarjetaCredito ?poseeTarjetaCredito))
=>
   (if (and (= ?frecuenciaUsoTC false) (= ?pagaATiempo true) (= ?plazoBajo true) (=?edad J) (=?estadoCivil C)(=?poseeTarjetaCredito false))
      then
      (printout t "rule 7: credit no"  crlf)))

(defrule rule-eight
	(credit-calification (frecuenciaUsoTC ?frecuenciaUsoTC)(pagaATiempo ?pagaATiempo) (estadoCivil ?estadoCivil) (montoAlto ?montoAlto))
=>
   (if (and (= ?frecuenciaUsoTC false) (= ?pagaATiempo false) (=?estadoCivil S)(=?montoAlto true))
      then
      (printout t "rule 8: credit yes"  crlf)))

(defrule rule-nine
	(credit-calification (frecuenciaUsoTC ?frecuenciaUsoTC)(pagaATiempo ?pagaATiempo) (estadoCivil ?estadoCivil) (montoAlto ?montoAlto))
=>
   (if (and (= ?frecuenciaUsoTC false) (= ?pagaATiempo false) (=?estadoCivil S)(=?montoAlto false))
      then
      (printout t "rule 9: credit no"  crlf)))

(defrule rule-ten
	(credit-calification (frecuenciaUsoTC ?frecuenciaUsoTC)(pagaATiempo ?pagaATiempo) (estadoCivil ?estadoCivil) (montoAlto ?montoAlto))
=>
   (if (and (= ?frecuenciaUsoTC false) (= ?pagaATiempo false) (=?estadoCivil C))
      then
      (printout t "rule 10: credit no"  crlf)))

