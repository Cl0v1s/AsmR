SECTION "OAM", oam

MACRO sprite_oam_struct
\1YCoord::     db
\1XCoord::     db
\1TileID::     db
\1Attributes:: db
; bit 7: priority
; bit 6: y flip
; bit 5: x flip
; bit 4: pal # (non-cgb)
; bit 3: vram bank (cgb only)
; bit 2-0: pal # (cgb only)
ENDM


oamSprite00:: sprite_oam_struct oamSprite00
oamSprite01:: sprite_oam_struct oamSprite01
oamSprite02:: sprite_oam_struct oamSprite02
oamSprite03:: sprite_oam_struct oamSprite03
oamSprite04:: sprite_oam_struct oamSprite04
oamSprite05:: sprite_oam_struct oamSprite05
oamSprite06:: sprite_oam_struct oamSprite06
oamSprite07:: sprite_oam_struct oamSprite07
oamSprite08:: sprite_oam_struct oamSprite08
oamSprite09:: sprite_oam_struct oamSprite09
oamSprite10:: sprite_oam_struct oamSprite10
oamSprite11:: sprite_oam_struct oamSprite11
oamSprite12:: sprite_oam_struct oamSprite12
oamSprite13:: sprite_oam_struct oamSprite13
oamSprite14:: sprite_oam_struct oamSprite14
oamSprite15:: sprite_oam_struct oamSprite15
oamSprite16:: sprite_oam_struct oamSprite16
oamSprite17:: sprite_oam_struct oamSprite17
oamSprite18:: sprite_oam_struct oamSprite18
oamSprite19:: sprite_oam_struct oamSprite19
oamSprite20:: sprite_oam_struct oamSprite20
oamSprite21:: sprite_oam_struct oamSprite21
oamSprite22:: sprite_oam_struct oamSprite22
oamSprite23:: sprite_oam_struct oamSprite23
oamSprite24:: sprite_oam_struct oamSprite24
oamSprite25:: sprite_oam_struct oamSprite25
oamSprite26:: sprite_oam_struct oamSprite26
oamSprite27:: sprite_oam_struct oamSprite27
oamSprite28:: sprite_oam_struct oamSprite28
oamSprite29:: sprite_oam_struct oamSprite29
oamSprite30:: sprite_oam_struct oamSprite30
oamSprite31:: sprite_oam_struct oamSprite31
oamSprite32:: sprite_oam_struct oamSprite32
oamSprite33:: sprite_oam_struct oamSprite33
oamSprite34:: sprite_oam_struct oamSprite34
oamSprite35:: sprite_oam_struct oamSprite35
oamSprite36:: sprite_oam_struct oamSprite36
oamSprite37:: sprite_oam_struct oamSprite37
oamSprite38:: sprite_oam_struct oamSprite38
oamSprite39:: sprite_oam_struct oamSprite39
