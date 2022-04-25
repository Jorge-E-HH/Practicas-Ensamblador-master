.model tiny ; 	directiva de modelo de programación
.stack ; 		directiva de asignación de segmento de stack
.data ; 		directiva de asignación de segmento de datos
TEXTO	DB	"ESCRIBA SU NOMBRE: $"	
ENT	LABEL	BYTE
MAXIMO	DB	20
REAL	DB	?
DATOS	DB	20 DUP('')
.code ;		 directiva de asignación de segmento de datos
start:
begin	PROC	FAR; 		inicio de PROCEDIMIENTO BEGIN
	
	MOV	AX,0600H	; PETICION
	MOV 	BH,40H	;ATRIBUTO Rojo SOBRE Negro
	MOV	CX,0000H	;INICIO
	MOV	DX,184FH		;FINAL
	INT	10H
	
	MOV	AX,0600H	; PETICION
	MOV 	BH,30H	;ATRIBUTO Azul SOBRE NEGRO
	MOV	CX,0202H	;INICIO
	MOV	DX,164DH		;FINAL
	INT	10H

	MOV 	AH,02H	;PETICION PARA COLOCAR EL CURSOR
	MOV	BH,00	;NUMERO DE PAGINA 0
	MOV	DH,5	;RENGLON 
	MOV	DL,5	;COLUMNA 
	INT	10H
		
	
	LEA	DX,TEXTO	;CARGA DE LA DIRRECCION
	MOV 	AX,SEG TEXTO 	; segmento en AX
	MOV 	DS,AX		 ; DS:DX apunta al mensaje
	MOV	AH,09H	;PETICION DE DESPLIEGE
	INT	21H	;INTERRUPCION
		
	MOV	AH,0AH
	
	LEA	DX,ENT
	INT	21H
	
	MOV	AX,0600H	; PETICION
	MOV 	BH,40H	;ATRIBUTO Azul SOBRE Negro
	MOV	CX,0000H	;INICIO
	MOV	DX,184FH		;FINAL
	INT	10H
	
MOV 	AH,02H	;PETICION PARA COLOCAR EL CURSOR
	MOV	BH,00	;NUMERO DE PAGINA 0
	MOV	DH,12	;RENGLON 
	MOV	DL,36	;COLUMNA 
	INT	10H
		
	LEA	DX,DATOS	;CARGA DE LA DIRRECCION
	MOV 	AX,SEG TEXTO 	; segmento en AX
	MOV 	DS,AX		 ; DS:DX apunta al mensaje
	MOV	AH,09H	;PETICION DE DESPLIEGE
	INT	21H	;INTERRUPCION

	CALL	PAUSA
	MOV	AX,0600H	; PETICION
	MOV 	BH,0FH	;ATRIBUTO Azul SOBRE Negro
	MOV	CX,0000H	;INICIO
	MOV	DX,184FH		;FINAL
	INT	10H
	
	MOV	 AX,4C00H ; vuelta al DOS
	INT	 21H
	
PAUSA	PROC	NEAR
	MOV  AH, 10h ; PAUSA
	INT  16h
	RET
PAUSA	ENDP

BEGIN	ENDP	;FIN DE PROCEDIMIENTO
	END	start	;FIN DE PROGRAMA
