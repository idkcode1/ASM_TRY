;Using subroutine, find the factorial of a number.

		AREA MY_code, CODE, READONLY
		mov r0,#0x40000000
		mov r2,#5
		mov r4,#1
recur	bl fact
		cmp r2,#0x00
		bne recur
		beq k
fact	
		mul r4,r2,r4 
		sub r2,r2,#1 
		mov pc, lr
k		str r4,[r0]

l		b l
		end

