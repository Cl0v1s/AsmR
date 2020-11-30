include "system/joypad.asm"
include "system/screen.asm"


; LOAD_DATA
; Charge des données depuis une source vers une destination
; Paramètres:
; hl -> adresse source
; bc -> nombre de bytes à charger
; de -> adresse de destination
LOAD_DATA::
	ld	a,[hl+]	;get a byte from our tiles, and increment.
	ld	[de],a	;put that byte in VRAM and
	inc	de		;increment.
	dec	bc		;bc=bc-1.
	ld	a,b		;if b or c != 0,
	or	c		;
	jr	nz, LOAD_DATA	;then loop.
	ret	
