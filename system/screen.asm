Screen_VBlank:
	ld  hl,vblank_flag
.Screen_VBlank_loop
	halt
	nop  			 ;Hardware bug
	ld  a,$0
	cp  [hl]
	jr  z,.Screen_VBlank_loop
	ld  [hl],a
	ld  a,[vblank_count]
	inc a
	ld  [vblank_count],a
	ret


; crée un sprite 
; 1: id du sprite
; 2: tile id 
; 3: y pos
; 4: x pos
; 5: attr
MACRO create_sprite
	ld a, 16 + \3
	ld [oamSprite\1YCoord], a
	ld a, 8 + \4
	ld [oamSprite\1XCoord], a
	ld a, \2
	ld [oamSprite\1TileID], a
	ld a, \5
	ld [oamSprite\1Attributes], a
ENDM

; place le sprite aux coordonnées
; 1: id du sprite
; b: y
; c: x
MACRO setpos_sprite
	ld a, 16
	add b
	ld [oamSprite\1YCoord], a
	ld a, 8
	add c
	ld [oamSprite\1XCoord], a
ENDM