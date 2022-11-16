;Consider a 32-bit number present in 0x4000 0000.
		AREA my_code, CODE, READONLY
		mov r0,#0x40000000
		ldr r0,[r0]
		mov r1,#0x1F
		mov r2,#0
		
;Find the number of ones and zero present in the 32-bit number. 
loop	cmp r2,r1
		beq endloop
		add r2,#1
		movs r0,r0,lsr #1
		addcs r3,r3,#1
		addcc r4,r4,#1
		b loop
		;bcs one
		;bcc zero
		
;one		add r3,#1
		;b loop
;zero	add r4,#1
;		b loop

;Store the result in 0x4000 0004 and 0x4000 0008.
endloop
		mov r0,#0x40000004
		str r3,[r0]
		add r0,#0x04
		str r4, [r0]
l		b l
		end
