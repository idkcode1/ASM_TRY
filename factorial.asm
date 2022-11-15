;Find the factorial of a number

      AREA MY_code, CODE, READONLY
      mov r0,#0x40000000
      mov r1,#1
      mov r2,#5
      mov r4,#1
loop 	cmp r2,r1
      beq endloop
      mul r4,r2,r4 ;4*3>>r4=12 >>>
      sub r2,r2,#1 ; 3
      b loop
endloop
      str r4,[r0]
l	  	b l
      end
