(deffacts datos
	(numeros num_magico 21 usables 5 3 8 14 7 usados)
)
(defrule suma
	(numeros num_magico ?res usables $?num1 ?x $?num2 ?y $?num3 usados $?aux)
	?sum <- (+ ?x ?y) 
=>
	(assert (numeros num_magico ?res usables $?num1 $?num2 $?num3 ?sum usados $?aux ?x ?y))
	