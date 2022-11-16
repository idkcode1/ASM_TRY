;Implement a 16-bit addition. Assume data is present in code memory

		AREA my_code, CODE, READONLY
		mov r0, #0x40000000
		ldr r1,=value1
		ldr r1,[r1]
		ldr r2,=value2
		ldr r2,[r2]
		adds r3,r2,r1
		bcc l
		add r4,#0x01
l
		str r3,[r0]
		add r0,#0x04
		str r4,[r0]
a		b a
				
value1 	dcd 0xFFFF
value2  dcd 0x4100

		end
