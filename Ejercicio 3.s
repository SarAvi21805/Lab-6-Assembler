.global _start
_start:

	// Método 1: Declararlo igual a 0
	MOV R7, #0		// R7 = 0
	
	// Método 2: Instrucción EOR
	EOR R7, R7, R7 // R7 XOR R7, resulta en 0
	
	// Método 3: Instrucción SUB
	MOV R7, #8
	SUB R7, R7, R7 // R7 = R7 - R7
	
	// Método 4: Instrucción AND
	AND R7, R7, #0 //R7 AND 0, resulta en 0