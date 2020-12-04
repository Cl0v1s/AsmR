
Life::
Life_UI_X EQU $99E5
Life_UI_TILE EQU $25

Life_B_Progress_MAX EQU 80

Life_Init:
	ld a, 1
	ld [wLifeCantAct], a

	call Screen_VBlank
	call Dog_Create
	ld b, (160 - 16)/2 - 24/2
	ld c, (168 - 16)/2 - 24/2
	call Dog_SetPos
ret

Life_Update:
	; si temp counter n'est pas 0 on ignore
	ld a, [wLifeCantAct]
	dec a
	jp z, .act ; si wLifeCantAct - 1 vaut zéro, on peut aller aux inputs
	ld [wLifeCantAct], a 
	jp nz, .update ; sinon on l'update et on va directement dessiner
.act
	; on remet le dogo
	call Life_B_unload_ui
	call Dog_Reset
	; test des inputs
	ld a, [joypad_down]
	bit 0, a
	call nz, Life_B_action
	jp .draw
.update
	ld a, [wDogState]
	cp 1
	call z, Life_B_update
.draw
	call Screen_VBlank
	call Dog_Update
ret

Life_B_action::
	ld a, (4*$0A)*4
	ld [wLifeCantAct], a
	ld a, 1
	ld [wDogState], a
	ld a, Life_B_Progress_MAX/2
	ld [wLifeBProgress], a
	; continue
Life_B_load_ui::
	; load ui data
	ld hl, Life_UI_X
	ld a, Life_UI_TILE
	ld b, 10
	.loop
	ld [hl+], a
	dec b
	ret z
	jp .loop

Life_B_unload_ui::
	; load ui data
	ld hl, Life_UI_X
	ld a, $0
	ld b, 10
	.loop
	ld [hl+], a
	dec b
	ret z
	jp .loop

; a contient wLifeBProgress
Life_B_update_ui::
	ld hl, Life_UI_X
	ld c, 10
	.loop
	dec c
	push af
	ld a, 8
	add Life_UI_TILE ; a = Life_UI_TILE + 8
	ld [hl+], a
	pop af 
	sub 8
	jp c, .after_loop ; on arrête si a vaut zéro
	jp .loop
	.after_loop
	ld a, c 
	cp 0 
	ret z
	ld a, Life_UI_TILE
	ld [hl], a
	ret 


Life_B_update::
	ld a, [wLifeBProgress]
	dec a
	ld [wLifeBProgress], a
	jp nz, .update
	; si wLifebProgress arrive à zéro, on annule l'action en cours
	ld a, 1
	ld [wLifeCantAct], a
	jp Life_B_unload_ui
.update
	ld e, a
	cp Life_B_Progress_MAX
	call c, Life_B_update_ui

	; test des inputs 
	ld a, [joypad_down]
	bit 0, a
	ret z

	; si on appuie sur B
	; e contient wLifeBProgress
	ld a, 4
	add e
	cp Life_B_Progress_MAX
	ret nc
	ld [wLifeBProgress], a
	ret

