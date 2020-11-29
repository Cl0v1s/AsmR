;-------------
; gb-template - bank0.asm
;-------------
; Includes
;-------------
	
	INCLUDE "hardware.asm"
  INCLUDE "header.asm"
	include "ram/ram.asm"

;-------------
; Start
;-------------

SECTION "Program Start",rom0[$150]
START:
	ei				 ;enable interrupts
	ld  sp,$FFFE
	ld  a,IEF_VBLANK ;enable vblank interrupt
	ld  [rIE],a

	ld  a,$0
	ldh [rLCDC],a 	 ;LCD off
	ldh [rSTAT],a

	ld  a,%11100100  ;shade palette (11 10 01 00)
	ldh [rBGP],a 	 ;setup palettes
	ldh [rOCPD],a
	ldh [rOBP0],a

	ld  a,%11010011  ;turn on LCD, BG0, OBJ0, etc
	ldh [rLCDC],a    ;load LCD flags

LOOP:
	call WAIT_VBLANK
	call READ_JOYPAD
	jp LOOP

include "system/system.asm"


