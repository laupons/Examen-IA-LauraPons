(deffacts datos
	(num_magico 21 numeros 5 3 8 14 7 pasos)
)

(defrule suma
	(num_magico ?res numeros $?num1 ?x $?num2 ?y $?num3 pasos $?aux)
=>
	(assert (num_magico ?res numeros $?num1 $?num2 $?num3 (+ ?x ?y) pasos $?aux suma ?x ?y)))

(defrule multiplicacion
	(num_magico ?res numeros $?num1 ?x $?num2 ?y $?num3 pasos $?aux)
=>
	(assert (num_magico ?res numeros $?num1 $?num2 $?num3 (* ?x ?y) pasos $?aux multiplica ?x ?y)))

(defrule resta_tipo1
	(num_magico ?res numeros $?num1 ?x $?num2 ?y $?num3 pasos $?aux)
	(test (< ?y ?x))
=>
	(assert (num_magico ?res numeros $?num1 $?num2 $?num3 (- ?x ?y) pasos $?aux resta ?x ?y)))

(defrule resta_tipo2
	(num_magico ?res numeros $?num1 ?x $?num2 ?y $?num3 pasos $?aux)
	(test (< ?x ?y))	
=>
	(assert (num_magico ?res numeros $?num1 $?num2 $?num3 (- ?y ?x) pasos $?aux resta ?y ?x)))

(defrule no_num
	(num_magico ?res numeros $?num1 pasos $?aux)
	(test ())	
=>
	(halt))