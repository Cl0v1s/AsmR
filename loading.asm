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
; chargement chien
ld hl, RES_DOG
ld bc, (RES_DOG_END - RES_DOG)
ld de, _VRAM + $10
call LOAD_DATA