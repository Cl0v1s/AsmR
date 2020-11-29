GAME::
LOOP:
	call WAIT_VBLANK
	call DOG_Update

	call READ_JOYPAD
	jp LOOP
LOOP_END::