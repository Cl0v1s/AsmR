include "system/joypad.asm"
include "system/screen.asm"

create_sprite: MACRO
	ld a, 16 + \3
	ld [oamSprite\1YCoord], a
	ld a, 8 + \4
	ld [oamSprite\1XCoord], a
	ld a, \2
	ld [oamSprite\1TileID], a
	ld a, \5
	ld [oamSprite\1Attributes], a
ENDM

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
