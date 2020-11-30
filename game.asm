GAME::
	call Scene_Init

	call Life_Init

LOOP:
	call READ_JOYPAD
	call Life_Update
	jp LOOP
LOOP_END::