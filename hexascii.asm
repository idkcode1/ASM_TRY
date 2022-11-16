;Convert a given number from 0x4000 0000 hex value to ASCII

;		AREA my_code, CODE,READONLY
;		mov r0,#0x40000000
;		ldr r0,[r0]
;		ldr r1,[r0]
;		subs r0,#0AH
;		bcs l
;		mov r0,r1
;		add r0,#0x41
		
;l		mov r0,r1
;		add r0,#0x30	
;		str r0,[r0]
;k		b k
;		end
		
   AREA mycode, CODE, READONLY

    LDR R0,=Value 
    LDR R5, [R0] 
	mov r3,#0x9
    ;MOV R1,#0
    mov R6, #0x40000000 
	
UP  sub r3,#0x1
	cmp r3,#0
	beq l
	;ADD R1,#1
	AND R2,R5,#0x0F 
    CMP R2,#09 
    BLE DOWN 
    ADD R2,#0x37
	
	STRB R2, [R6], #01
	ROR R5, #4  
	b UP
DOWN
    ADD R2,#0x30
    STRB R2, [R6], #01
    ROR R5, #4   
    B UP 
l    b l
Value dcd 0x12D5ABCD ;




   END