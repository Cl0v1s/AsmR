
Life::

Life_Init:
	ld a, 1
	ld [wLifeTemp1], a

	call Screen_VBlank
	call Dog_Create
	ld b, (160 - 16)/2 - 24/2
	ld c, (168 - 16)/2 - 24/2
	call Dog_SetPos
ret

Life_Update:
	; si temp counter n'est pas 0 on ignore
	ld a, [wLifeTemp1]
	dec a
	jp z, .input ; si wLifeTemp1 - 1 vaut zéro, on peut aller aux inputs
	ld [wLifeTemp1], a 
	jp nz, .draw ; sinon on l'update et on va directement dessiner
.input
	; on remet le dogo
	call Dog_Reset
	
	; test des inputs
	ld a, [joypad_down]
	bit 0, a
	call nz, Life_B_action

.draw
	call Screen_VBlank
	call Dog_Update
ret

Life_B_action: 
	ld a, 4*$0A
	ld [wLifeTemp1], a
	ld a, 1
	ld [wDogState], a
	ret


