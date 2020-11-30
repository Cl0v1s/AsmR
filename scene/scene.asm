include "scene/life.asm"

Scene::

Scene_Init:
	ld a, 1 
	ld [wSceneIsLife], a
	xor a
	ld [wSceneIsOverworld], a  
	ret