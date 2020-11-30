
Life::

Life_Init:
	call Screen_VBlank
	call Dog_Create
	ld b, (160 - 16)/2 - 24/2
	ld c, (168 - 16)/2 - 24/2
	call Dog_SetPos
ret

Life_Update:


	call Screen_VBlank
	call Dog_Update
ret


