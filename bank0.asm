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

	include "loading.asm"

	ld  a,%11010011  ;turn on LCD, BG0, OBJ0, etc
	ldh [rLCDC],a    ;load LCD flags

include "game.asm"

include "system/system.asm"
include "res/res.asm"
include "engine/engine.asm"
include "scene/scene.asm"

