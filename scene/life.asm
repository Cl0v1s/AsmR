
Life::
Life_UI_X EQU $99E5
Life_UI_TILE EQU $49
Life_UI_TARGET EQU $52

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
	jr nz, .update ; sinon on l'update et on va directement dessiner
.act
	; Pas de remise à zéro si déjà à zéro
	ld a, [wDogState]
	ld b, a
	call Dog_Reset

	ld a, b
	cp 0 
	jr z, .act_after_reset
	cp 1
	call z, Life_B_end ; si dogstate vaut 1 on check la fin
	; on remet le dogo à zéro
	call Life_B_unload_ui
	.act_after_reset
	; test des inputs
	ld a, [joypad_down]
	bit 0, a
	call nz, Life_B_action
	jr .draw
.update
	ld a, [wDogState]
	cp 1
	call z, Life_B_update
.draw
	call Screen_VBlank
	call Dog_Update
ret

Life_B_action::
	; on empeche le début d'une nouvelle action
	ld a, (4*$0A)*4
	ld [wLifeCantAct], a
	; on set le state
	ld a, 1
	ld [wDogState], a
	; on détermine le niveau de progrès initial
	ld a, Life_B_Progress_MAX/2
	ld [wLifeBProgress], a
	; on détermine la target
	.target
	ld a, [rDIV]
	and (Life_B_Progress_MAX - 16) - 1
	or 16
	srl a
	srl a
	srl a
	ld [wLifeBTarget], a
	ld b, a
	; continue
Life_B_load_ui::
	call Screen_VBlank
	ld hl, Life_UI_X - $20
	; b contient wLifeBTarget
	ld a, b
	add l 
	sub 1
	ld l, a
	ld a, Life_UI_TARGET
	ld [hl], a
	ld a, l
	add 2
	ld l, a
	ld a, Life_UI_TARGET
	ld [hl], a

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
	ld hl, Life_UI_X - $20
	ld a, [wLifeBTarget]
	add l 
	sub 1
	ld l, a
	ld a, $0
	ld [hl+], a
	inc hl
	ld [hl], a
	; unload ui data
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
	.loop
	ld b, a ; on sauve a
	ld a, 8
	add Life_UI_TILE ; a = Life_UI_TILE + 8
	ld [hl+], a
	ld a, b ; on restaure a
	sub 8
	jp c, .after_loop ; on arrête si < zéro
	jp .loop
	.after_loop
	ld b, a ; on sauve a 
	ld a, l 
	cp $EF ; on regarde si l a atteint la limite de 10 
	ret z ; si oui, on arrête
	ld a, b ; on restaure a 
	add 8 ; on cancel le dernier sub 8 pour récupérer le reste 
	add Life_UI_TILE
	ld [hl+], a
	ret 


Life_B_update::
	ld a, [wLifeBProgress]
	dec a
	ld [wLifeBProgress], a
	jp nz, .update
	; si wLifebProgress arrive à zéro, on arrête
	ld a, 1
	ld [wLifeCantAct], a
.update
	ld e, a
	call Life_B_update_ui
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


Life_B_end::
	ld a, [wLifeBProgress]
	ld b, a
	ld a, [wLifeBTarget]
	sla a 
	sla a 
	sla a
	sub 4
	; on compare wLifeBProgress et wLifeBTarget
	sub 8
	cp b
	jr nc, .loose
	add (16 + 1)
	cp b
	jr c, .loose
.win 
	ld a, [wDogHappiness]
	add 15
	ld [wDogHappiness], a
	ret
.loose
	ld a, [wDogHappiness]
	sub 5
	ld [wDogHappiness], a
	ld a, 2 
	ld [wDogState], a
	ld a, $0A*8
	ld [wLifeCantAct], a
	ret 


