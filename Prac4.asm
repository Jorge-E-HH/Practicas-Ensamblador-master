.model tiny ; 	directiva de modelo de programación
.stack ; 		directiva de asignación de segmento de stack
.data ; 		directiva de asignación de segmento de datos
.code ;		 directiva de asignación de segmento de datos
start:
begin	PROC	FAR; 		inicio de PROCEDIMIENTO BEGIN
	
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
	
MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 70        ;DX = Coord Y
RE:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h
     
	  MOV DX,70
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE
  	  
  	  MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  ;CALL	PAUSA
  	  	
	
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 71       ;DX = Coord Y
RE1:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,71
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE1
  	  
	MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 72       ;DX = Coord Y
RE2:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,72
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE2
  	  
  	  
	MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 73       ;DX = Coord Y
RE3:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,73
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE3
  	  
  	  
	MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 74       ;DX = Coord Y
RE4:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,74
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE4
  	  
  	  
	MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 75       ;DX = Coord Y
RE5:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,75
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE5
  	  
	MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 76       ;DX = Coord Y
RE6:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,76
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE6
  	  
  	  
	MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 77       ;DX = Coord Y
RE7:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,77
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE7
  	  	
	MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 78       ;DX = Coord Y
RE8:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,78
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE8
  	  
  	  
	MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 79       ;DX = Coord Y
RE9:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,79
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE9
  	  
  	  MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 80       ;DX = Coord Y
RE10:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,80
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE10
  	
  	MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 81       ;DX = Coord Y
RE11:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,81
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE11
  	
  	MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 82       ;DX = Coord Y
RE12:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,82
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE12
  	
  	MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 83       ;DX = Coord Y
RE13:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,83
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE13
  	  
  	  MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 84       ;DX = Coord Y
RE14:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,84
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE14
  	
  	MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 85       ;DX = Coord Y
RE15:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,85
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE15
  	  
  	  MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 86       ;DX = Coord Y
RE16:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,86
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE16
  	
  	MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 87       ;DX = Coord Y
RE17:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,87
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE17
  	  
  	  MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 88       ;DX = Coord Y
RE18:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,88
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE18
  	
  	MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 89       ;DX = Coord Y
RE19:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,89
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE19
  	
  	MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 90       ;DX = Coord Y
RE20:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,90
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE20
  	MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 91       ;DX = Coord Y
RE21:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,91
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE21
MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 92       ;DX = Coord Y
RE22:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,92
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE22
MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 93       ;DX = Coord Y
RE23:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,93
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE23
 MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 94       ;DX = Coord Y
RE24:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,94
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE24
MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 95       ;DX = Coord Y
RE25:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,95
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE25
MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 96       ;DX = Coord Y
RE26:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,96
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE26
MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 97       ;DX = Coord Y
RE27:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,97
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE27
MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 98       ;DX = Coord Y
RE28:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,98
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE28
  	  MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 99       ;DX = Coord Y
RE29:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,99
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE29
MOV     CX, 00H
	MOV     DX, 9999H
	MOV     AH, 86H
	INT     15H
	
	MOV	AH,00H; PETICION PARA HABILITAR MODO VIDEO
	MOV	AL,04H; 320 X 200 EGA, VGA
	INT	10H
	
	MOV  AH, 0BH        ;Establece la paleta de 16 colores
	MOV  BX, 0004H      ;BH=Page=0, BL=Color ROJO
	INT  10H            ;Para el fondo de pantalla
  	  
  	  MOV  CX, 20        ;CX = Coord. X 
MOV BX,CX
MOV  DX, 100       ;DX = Coord Y
RE30:
       MOV  AH, 0Ch        ;DRAW PIXEL
	   MOV  AL, 05H ;AL=Color
	   INT 10h

	
	     
	  MOV DX,100
	  INC  BX 
	  MOV CX,BX

  	              ;Incrementa posiscion en x
  	  CMP  CX, 300       ;hasta la posicion 200
  	  JNE  RE30
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
