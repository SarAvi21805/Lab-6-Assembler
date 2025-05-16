.syntax unified
.cpu cortex-m4
.thumb

.section .text
.global inciso4

inciso4:
	MOV R0, #8		//Asignar valor distinto de 0
	MVN R0, R0		//Obtener complemento A1
	ADD R0, R0, #1 	//Sumar 1 para obtener complemento A2
