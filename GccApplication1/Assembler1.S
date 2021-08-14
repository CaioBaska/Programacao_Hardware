#include <avr/io.h>
.global papel
	papel:
		.org	0x00							


		inicio:

			ldi		r16,0x80
			out		DDRD,r16
			ldi		r16,0x40											
			out		PORTD,r16	

		liga_circuito:

			out		PORTD,PD7					
			rjmp		loop
					
		loop:
	
			out		PIND,PD6
			rjmp		liga_circuito											
			out		PORTD,PD7	
			rjmp		loop	


	
		