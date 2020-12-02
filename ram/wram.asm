SECTION "RAM Vars",wram0
vblank_flag:
db
vblank_count:
db
joypad_down:
db                   ;dow/up/lef/rig/sta/sel/a/b
joypad_pressed:
db


wSceneIsLife: db
wSceneIsOverworld: db

wLifeCantAct: db
wLifeBProgress: db


wDogAnimation::
wDogAnimation_step: db
wDogAnimation_counter: db
wDogAnimation_address: dw

wDogState: db ; 0: idle, 1: patpat