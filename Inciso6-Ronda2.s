.syntax unified
.cpu cortex-m4
.thumb

.section .text
.global inciso6r2

inciso6r2:
    // Inicialización de números
    MOV R0, #1      // R0 = 1
    MOV R1, #23		// R1 = 23
    MOV R2, #-4     // R2 = -4
    MOV R3, #15     // R3 = 15
	MOV R4, #-6		// R4 = -6
	MOV R5, #9		// R5 = 9

	// Método 1: 727
   	MUL R6, R1, R2		// R6 = 23 * -4 = -92
	SUB R7, R5, R0		// R7 = 9 - 1 = 8
	MUL R8, R6, R7		// R8 = -92 * 8 = -736
	NEG R9, R8			// R8 = 736
	ADD R10, R3, R4		// R9 = 15 + (-6) = 9
	SUB R11, R9, R10		// R10 = 736 - 9 = 727
