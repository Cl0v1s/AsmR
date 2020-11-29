DOG::
DOG_Create:
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

DOG_Update:
	; update counter
	ld a, [wDogAnimation_counter]
	inc a
	ld [wDogAnimation_counter], a
	cp $3F/4
	jp z, .frame_2
	cp $3F/4 * 2
	jp z, .frame_3
	cp $3F/4 * 3
	jp z, .frame_2
	cp $3F
	jp z, .frame_1
	ret c
	xor a
	ld [wDogAnimation_counter], a
	ret
.frame_3
	ld hl, oamSprite00
	ld de, RES_DOG_ANIMATION_PATPAT_FRAME_3
	jp Apply_Animation
.frame_2 
	ld hl, oamSprite00
	ld de, RES_DOG_ANIMATION_PATPAT_FRAME_2
	jp Apply_Animation
.frame_1
	ld hl, oamSprite00
	ld de, RES_DOG_ANIMATION_PATPAT_FRAME_1
	jp Apply_Animation



; de animation à jour
; hl adresse du sprite à changer
Apply_Animation:
	ld b, 0
	ld c, 2 
	add hl, bc ; selection tile
	ld c, 4

.loop
	ld a, [de]
	cp $ff ; ff correspond au stop de la frame
	ret z ; alors on stop
	inc de
	ld [hl], a
	add hl, bc
	jp .loop


