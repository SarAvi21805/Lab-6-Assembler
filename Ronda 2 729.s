.global _start //Objetivo = 728
_start:
    // Inicialización de números
    MOV R0, #1      // R0 = 1
    MOV R1, #23		// R1 = 23
    MOV R2, #-4     // R2 = -4
    MOV R3, #15     // R3 = 15
	MOV R4, #-6		// R4 = -6
	MOV R5, #9		// R5 = 9
	
	// Método 2: 729
	//NEG R2	//R
   	ADD R6, R1, R0	// R6 = 23 +1 = 24
	MUL R7, R6, R3	// R7 = 24 * 15 = 360
	NEG R8, R4		// R8 = 6
	ADD R9, R8, R2	// R9 = 6 + (-4) = 2
	MUL R10, R7, R9	// R10 = 360 * 2 = 720
	ADD R11, R10, R5	// R11 = 720 + 9 = 729