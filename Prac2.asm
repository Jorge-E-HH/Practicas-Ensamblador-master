.model tiny ; 	directiva de modelo de programación
.stack ; 		directiva de asignación de segmento de stack
.data ; 		directiva de asignación de segmento de datos
TEXTO DB "CUALQUIER NOMBRE $"
.code ;		 directiva de asignación de segmento de datos
start:
begin	PROC	FAR; 		inicio de PROCEDIMIENTO BEGIN
		
MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
MOV	AL,04H; 320 X 200 EGA, VGA
INT	10H
	
	    MOV  AH, 0BH        ;Establece la paleta de 16 colores
	    MOV  BX, 0001H      ;BH=Page=0, BL=Color AZUL
	    INT  10H            ;Para el fondo de pantalla    
	    MOV  CX, 10        ;CX = Coord. X
	    MOV  DX, 10        ;DX = Coord Y
RE:
	    MOV  AH, 0Ch        ;DRAW PIXEL
	    MOV  AL, 0005H ;AL=Color
	    INT 10h

	    INC  CX             ;Incrementa posiscion en x
  	  CMP  CX, 310       ;hasta la posicion 200
  	  JNE  RE

	    MOV  CX, 10        ;CX = Coord. X
	    MOV  DX, 10        ;DX = Coord Y
REG:
	    MOV  AH, 0Ch        ;DRAW PIXEL
	    MOV  AL, 0005H ;AL=Color
	    INT 10h

	    INC  DX             ;Incrementa posiscion en x
  	  CMP  DX, 190       ;hasta la posicion 20
  	  JNE  REG

	    MOV  CX, 10        ;CX = Coord. X
	    MOV  DX, 190        ;DX = Coord Y

REG1:
	    MOV  AH, 0Ch        ;DRAW PIXEL
	    MOV  AL, 0005H ;AL=Color
	    INT 10h

	    INC  CX             ;Incrementa posiscion en x
  	  CMP  CX, 310       ;hasta la posicion 200
  	  JNE  REG1

	    MOV  CX, 310        ;CX = Coord. X
	    MOV  DX, 10        ;DX = Coord Y
REG2:

	   MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 0005H ;AL=Color
	   INT 10h

	   INC  DX             ;Incrementa posiscion en x
  	 CMP  DX, 190       ;hasta la posicion 20
  	 JNE  REG2
  	  
 MOV AH,02H ;PETICIÓN PARA COLOCAR EL CURSOR
 MOV BH,00 ;NÚMERO DE PÁGINA 0
 MOV DH,11 ;RENGLÓN
 MOV DL,10 ;COLUMNA
 INT 10H
 LEA DX,TEXTO ;CARGA DE LA DIRECCION
 MOV AX,SEG TEXTO ; SEGMENTO EN AX
 MOV DS,AX ; DS:DX APUNTA AL MENSAJE
 MOV AH,09H ;PETICIÓN DE DESPLIEGE
 INT 21H ;INTERRUPCIÓN

  CALL	PAUSA

	MOV	AH,00H; REGRESAMOS AL MODO TEXTO
	MOV	AL,03H
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
