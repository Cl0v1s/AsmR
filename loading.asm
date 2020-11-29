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
ld hl, RES_DOG_IDLE_1
ld bc, (RES_DOG_PATPAT_2 - RES_DOG)
ld de, _VRAM + $10
call LOAD_DATA

ld hl, RES_DOG_PATPAT_2
ld bc, (RES_DOG_PATPAT_3 - RES_DOG_PATPAT_2)
ld de, _VRAM + $10 + (RES_DOG_PATPAT_2 - RES_DOG)
call LOAD_DATA

ld hl, RES_DOG_PATPAT_3
ld bc, (RES_DOG_END - RES_DOG_PATPAT_3)
ld de, _VRAM + $10  - RES_DOG + RES_DOG_PATPAT_3 
call LOAD_DATA

INIT::
call DOG_Create
