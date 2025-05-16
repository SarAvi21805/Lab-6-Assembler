.syntax unified
.cpu cortex-m4
.thumb

.section .text
.global inciso2

inciso2:
    MOV R1, #0xC0     // Carga 0xC0 en R1
    MOV R2, #0x1F     // Carga 0x1F en R2
    RSB R4,R1, R2
    SUB R3, R2, R1    // R3 = R1 - R2


    B .
