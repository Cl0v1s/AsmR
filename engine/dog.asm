DOG::
Dog_Create:
	call Dog_Reset

	; index ; tile ; y ; x ; attr
	create_sprite 00, 1, 0, 0, 0
	create_sprite 03, 2, 8, 0, 0
	create_sprite 06, 3, 16, 0, 0

	create_sprite 01, 4, 0, 8, 0
	create_sprite 04, 5, 8, 8, 0
	create_sprite 07, 6, 16, 8, 0

	create_sprite 02, 7, 0, 16, 0
	create_sprite 05, 8, 8, 16, 0
	create_sprite 08, 9, 16, 16, 0
	ret

Dog_Reset:
	ld a, 1
	ld [wDogAnimation_counter], a
	ld a, 1
	ld [wDogAnimation_step], a
	ld a, 0
	ld [wDogState], a
	ret

; règle la position du chien
; b: y
; c: x
Dog_SetPos:
	setpos_sprite 00
	ld a, b 
	add 8
	ld b, a
	setpos_sprite 03
	ld a, b
	add 8 
	ld b, a
	setpos_sprite 06

	ld a, c 
	add 8 
	ld c, a 
	setpos_sprite 07
	ld a, b 
	sub 8
	ld b, a
	setpos_sprite 04
	ld a, b
	sub 8 
	ld b, a
	setpos_sprite 01

	ld a, c 
	add 8 
	ld c, a 
	setpos_sprite 02
	ld a, b 
	add 8
	ld b, a
	setpos_sprite 05
	ld a, b
	add 8 
	ld b, a
	setpos_sprite 08

	ret


Dog_Update::
	ld a, [wDogState] 
	cp 0 
	jp nz, .patpat
	; wDogState == 0
	ld hl, RES_DOG_ANIMATION_IDLE
	jp .counter
.patpat
	; wDogState == 1
	ld hl, RES_DOG_ANIMATION_PATPAT

.counter
	; update counter
	ld a, [wDogAnimation_counter]
	dec a
	ld [wDogAnimation_counter], a
	ret nz
	ld a, $0A
	ld [wDogAnimation_counter], a
	ld a, [wDogAnimation_step]
	dec a
	cp 0
	jp nz, .update
	ld a, 3
.update
	ld [wDogAnimation_step], a
	ld bc, oamSprite00
	jp Apply_Animation

; a: step de l'animation
; hl: animation
; bc: sprite
Apply_Animation:
	; recuperation de l'adresse de la frame
	sla a 
	ld d, 0
	ld e, a
	add hl, de ; get addr animation
	ld a, [hl+]
	ld e, a
	ld d, [hl]
	ld h, b
	ld l, c
	; recuperation adresse du sprite (tile)
	ld b, 0
	ld c, 2 
	add hl, bc ; selection tile
	ld c, 4
.loop ; mise à jour des sprites
	ld a, [de]
	cp $ff ; ff correspond au stop de la frame
	ret z ; alors on stop
	inc de
	ld [hl], a
	add hl, bc
	jp .loop


