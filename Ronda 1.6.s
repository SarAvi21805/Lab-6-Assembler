.global _start
_start:
    // Inicialización de números
    MOV R0, #11            // R0 = 11 (dividendo)
    MOV R1, #2             // R1 = 2  (divisor)
    MOV R2, #0             // R2 = 0  (cociente)
    MOV R3, R0             // R3 = R0 (dividendo temporal)
    // Verificación de división por cero
    CMP R1, #0             // Compara el divisor con 0
    BEQ division_por_cero   // Si R1 es 0, salta a division_por_cero

division:
    CMP R3, R1             // Compara el dividendo temporal con el divisor
    BLT fin_division       // Si R3 < R1, salta a fin_division
    SUB R3, R3, R1         // R3 = R3 - R1 (resta el divisor del dividendo temporal [Residuo de división])
    ADD R2, R2, #1         // Incrementa el cociente (resultado de la división)
    B division              // Vuelve al inicio del bucle

fin_division:    // Continuación de los cálculos
    MOV R4, #12            // R4 = 12
    MOV R5, #9             // R5 = 9
    MOV R6, #74            // R6 = 74
	MOV R7, #3				// R7 = 3
    SUB R8, R6, R5         // R8 = 74 - 9
	MUL R9, R7, R4			// R9 = 3 * 12
	MUL R10, R9, R8			// R10 = 36 * 65
	ADD R11, R10, R2		// R11 = 2340 + 5 (Resultado final)
	    // Fin del programa
    B .                    // Bucle infinito
division_por_cero:
    // Manejo de división por cero
    // Aquí puedes decidir qué hacer si el divisor es cero
    // Por ejemplo, podrías establecer R2 en un valor especial o hacer un bucle infinito
    MOV R2, #0             // Establece el cociente en 0
    B fin_division         // Salta a fin_division