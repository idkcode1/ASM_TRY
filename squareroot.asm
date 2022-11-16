;Find the square root of a number present in 0x4000 0000.

		AREA my_code,CODE,READONLY
		mov r0,#0x40000000
		mov r1,#0x40000030
		ldr r0,[r0]

		;cmp r0,#0
		;beq l1
		;cmp r0,#1
		;beq l1
		
		mov r2,#1		;int i = 1    
		mov r3,#1		;result = 1
loop	cmp r3,r0 		;while (result <= x)
		bge l1
		add r2,#1 		;i++
		mul r3,r2,r2 	;result = i * i
		b loop
		
;Store the result back in 0x4000 0030    
l1		;sub r2,#1
		str r2,[r1]
l		b l
		end
	
	
	