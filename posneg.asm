;Find whether the 32-bit number is negative or a positive number.

	AREA my_code, CODE, READONLY
	ENTRY
	
start
	mov r0,#0x40000000
	ldr r0,[r0]
	cmp r0,#0
	bge p
	addmi r4,r4,#02 	;display 2 if negative
	
	mov r0,#0x40000004
	str r4, [r0]
l	b l		

	
p	mov r0,#0x40000004
	add r3,#0x01		;display 1 if positive
	str r3,[r0]
j	b j
	end