
READ_JOYPAD:
	ld  a,%00100000  ;select dpad
	ld  [rP1],a
	ld  a,[rP1]		 ;takes a few cycles to get accurate reading
	ld  a,[rP1]
	ld  a,[rP1]
	ld  a,[rP1]
	cpl 			 ;complement a
	and %00001111    ;select dpad buttons
	swap a
	ld  b,a

	ld  a,%00010000  ;select other buttons
	ld  [rP1],a  
	ld  a,[rP1]
	ld  a,[rP1]
	ld  a,[rP1]
	ld  a,[rP1]
	cpl
	and %00001111
	or  b
					 ;lower nybble is other
	ld  b,a
	ld  a,[joypad_down]
	cpl
	and b
	ld  [joypad_pressed],a
					 ;upper nybble is dpad
	ld  a,b
	ld  [joypad_down],a
	ret

JOY_RIGHT:
	and %00010000
	cp  %00010000
	jp  nz,JOY_FALSE
	ld  a,$1
	ret
JOY_LEFT:
	and %00100000
	cp  %00100000
	jp  nz,JOY_FALSE
	ld  a,$1
	ret
JOY_UP:
	and %01000000
	cp  %01000000
	jp  nz,JOY_FALSE
	ld  a,$1
	ret
JOY_DOWN:
	and %10000000
	cp  %10000000
	jp  nz,JOY_FALSE
	ld  a,$1
	ret
JOY_A:
	and %00000001
	cp  %00000001
	jp  nz,JOY_FALSE
	ld  a,$1
	ret
JOY_B:
	and %00000010
	cp  %00000010
	jp  nz,JOY_FALSE
	ld  a,$1
	ret
JOY_SELECT:
	and %00000100
	cp  %00000100
	jp  nz,JOY_FALSE
	ld  a,$1
	ret
JOY_START:
	and %00001000
	cp  %00001000
	jp  nz,JOY_FALSE
	ld  a,$1
	ret
JOY_FALSE:
	ld  a,$0
	ret