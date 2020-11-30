
Life::

Life_Init:
	call Screen_VBlank
	call Dog_Create
	ld b, (160 - 16)/2 - 24/2
	ld c, (168 - 16)/2 - 24/2
	call Dog_SetPos
ret

Life_Update:
	ld a, [joypad_down]
	bit 0, a
	ld a, 0 
	ld [wDogState], a
	jp z, .draw
	; appuie sur b 
	ld a, 1
	ld [wDogState], a

.draw
	call Screen_VBlank
	call Dog_Update
ret


