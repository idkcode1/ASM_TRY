;Consider an array of 5 32- numbers present from location 0x4000 0000.
;Find the sum of these numbers and store back in 0x4000 1000

		AREA my_code,CODE, READONLY
		mov r0,#0x40000000
		ldr r4,=0x40001000
		mov r3,#0
		;ldr r0,[r0]
		mov r1,#5
		mov r2,#0
loop	cmp r2,r1
		beq endloop
		add r2,#1
		ldr r6,[r0]
		adds r3,r6 		;CARRY??
		add r5,#0x01
		add r0,#0x04
		
		b loop
endloop
		str r3,[r4]
		add r4,#0x04
		str r5,[r4]
l		b l
		end