.syntax unified
.cpu cortex-m4
.thumb

.section .text
.global mainASM

mainASM:
    MOV R1, #0xC0     // Carga 0xC0 en R1
    MOV R2, #0x1F     // Carga 0x1F en R2
    SUB R3, R1, R2    // R3 = R1 - R2


    B .
