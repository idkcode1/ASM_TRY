;Implement a 32-bit addition

		  AREA my_code, CODE, READONLY
		  mov r0,#0x40000000
		  ldr r1,=Value1
		  ldr r1, [r1]
		  add r0,#0x04
		  ldr r2,=Value2
		  ldr r2,[r2]
		  adds r3,r2,r1
		  bcc l
		  add r4,#0x01
l		  add r0,#0x04
		  str r3,[r0]
		  add r0,#0x04
		  str r4,[r0]
a		  b a
	
	
Value1 dcd 0x4f4223ff
Value2 dcd 0xffffffff
		end
