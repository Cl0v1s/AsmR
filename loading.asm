CLEAN_OAM::
	ld hl, _OAMRAM
	ld bc, (_IO - _OAMRAM)
	.clean_oam_loop:
		ld a, 0 
		ld [hli], a
		dec bc 
		ld a, b 
		or c
		jp nz, .clean_oam_loop

CLEAN_MAP::
	ld hl, _SCRN0
	ld bc, (_SCRN1 - _SCRN0)
	.clean_map_loop:
		ld a, 0 
		ld [hli], a
		dec bc 
		ld a, b 
		or c
		jp nz, .clean_map_loop

LOADING::
.dog_i_1
	ld hl, _VRAM
	ld de, DOG_IDLE_1
	ld c, (DOG_IDLE_2 - DOG_IDLE_1)
	.dog_i_1_loop
			ld a, [de]
			ld [hli], a
			inc de
			dec c
			jp nz, .dog_i_1_loop


