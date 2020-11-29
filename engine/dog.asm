DOG::
DOG_Create:
	ld a, $3F
	ld [wDogAnimation_counter], a
	ld a, $FF
	ld [wDogAnimation_step], a

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
	dec a
	ld [wDogAnimation_counter], a
	ret nz
	ld a, $3F
	ld [wDogAnimation_counter], a
	ld a, [wDogAnimation_step]
	inc a
	cp 4
	jp nz, .update
	xor a
.update
	ld [wDogAnimation_step], a
	sla a 
	ld b, 0
	ld c, a
	ld hl, RES_DOG_ANIMATION_PATPAT
	add hl, bc ; get addr animation
	ld a, [hl+]
	ld e, a
	ld d, [hl]
	ld hl, oamSprite00
	call Apply_Animation
ret

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


