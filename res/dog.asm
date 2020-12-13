	
RES_DOG_ANIMATION::
; Animation Idle
RES_DOG_ANIMATION_IDLE::
db 3
dw RES_DOG_ANIMATION_IDLE_FRAME_2
dw RES_DOG_ANIMATION_IDLE_FRAME_2
dw RES_DOG_ANIMATION_IDLE_FRAME_2
dw RES_DOG_ANIMATION_IDLE_FRAME_1
RES_DOG_ANIMATION_IDLE_FRAME_1::
db $1, $4, $7
db $2, $5, $8
db $3, $6, $9
db $ff
RES_DOG_ANIMATION_IDLE_FRAME_2::
db $ff
; Animation PatPat
RES_DOG_ANIMATION_PATPAT::
db 3
dw RES_DOG_ANIMATION_PATPAT_FRAME_2
dw RES_DOG_ANIMATION_PATPAT_FRAME_3
dw RES_DOG_ANIMATION_PATPAT_FRAME_2
dw RES_DOG_ANIMATION_PATPAT_FRAME_1
RES_DOG_ANIMATION_PATPAT_FRAME_1::
db $a, $d, $10
db $b, $e, $11
db $c, $f, $12
db $ff
RES_DOG_ANIMATION_PATPAT_FRAME_2::
db $13, $16, $19
db $ff
RES_DOG_ANIMATION_PATPAT_FRAME_3::
db $1C, $1F, $22
db $1D, $20, $23
db $1E, $21, $24
db $ff
RES_DOG_ANIMATION_ANGRY::
db 7
dw RES_DOG_ANIMATION_ANGRY_FRAME_4
dw RES_DOG_ANIMATION_ANGRY_FRAME_4
dw RES_DOG_ANIMATION_ANGRY_FRAME_4
dw RES_DOG_ANIMATION_ANGRY_FRAME_4
dw RES_DOG_ANIMATION_ANGRY_FRAME_4
dw RES_DOG_ANIMATION_ANGRY_FRAME_3
dw RES_DOG_ANIMATION_ANGRY_FRAME_2
dw RES_DOG_ANIMATION_ANGRY_FRAME_1
RES_DOG_ANIMATION_ANGRY_FRAME_1::
db $25, $28, $2B
db $26, $29, $2C
db $27, $2A, $2D
db $ff
RES_DOG_ANIMATION_ANGRY_FRAME_2::
db $2E, $31, $34
db $2F, $32, $35
db $ff
RES_DOG_ANIMATION_ANGRY_FRAME_3::
db $37, $3A, $3D
db $38, $3B, $3E
db $ff
RES_DOG_ANIMATION_ANGRY_FRAME_4::
db $40, $43, $46
db $41, $44, $47
db $ff
RES_DOG_ANIMATION_HAPPY::
db 2
dw RES_DOG_ANIMATION_HAPPY_FRAME_1
dw RES_DOG_ANIMATION_HAPPY_FRAME_2
dw RES_DOG_ANIMATION_HAPPY_FRAME_1
RES_DOG_ANIMATION_HAPPY_FRAME_1::

db $ff
RES_DOG_ANIMATION_HAPPY_FRAME_2::

db $ff
RES_DOG_ANIMATION_END::


RES_DOG::
RES_DOG_IDLE_1:
db	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1c,$1c,$3e,$3e,$7f,$7f
db	$7e,$7f,$65,$67,$0b,$0f,$09,$0f,$10,$1f,$10,$1f,$12,$1f,$12,$1f
db	$11,$1f,$10,$1f,$10,$1f,$11,$1f,$11,$1f,$39,$3f,$2d,$3f,$3f,$3f
db	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$fd,$fd,$03,$ff
db	$01,$ff,$8c,$ff,$5a,$7b,$8c,$ff,$00,$ff,$70,$ff,$22,$ff,$52,$ff
db	$8c,$ff,$00,$ff,$00,$ff,$24,$ff,$24,$ff,$24,$ff,$25,$ff,$ff,$ff
db	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$e0,$e0,$f0,$f0,$f8,$f8
db	$f8,$f8,$98,$98,$c0,$c0,$c0,$c0,$60,$e0,$60,$e0,$60,$e0,$68,$e8
db	$6c,$ec,$6e,$ee,$6e,$ee,$7e,$fe,$7c,$fc,$f8,$f8,$b0,$f0,$f0,$f0
RES_DOG_PATPAT_1:
db  $01,$01,$03,$03,$07,$07,$02,$02,$00,$00,$1c,$1c,$3e,$3e,$7f,$7f
db	$7e,$7f,$65,$67,$0b,$0f,$09,$0f,$10,$1f,$10,$1f,$12,$1f,$12,$1f
db	$11,$1f,$10,$1f,$10,$1f,$11,$1f,$11,$1f,$39,$3f,$2d,$3f,$3f,$3f
db	$ff,$ff,$ff,$ff,$80,$80,$00,$00,$00,$00,$00,$00,$fd,$fd,$03,$ff
db	$01,$ff,$8c,$ff,$5a,$7b,$8c,$ff,$00,$ff,$70,$ff,$22,$ff,$52,$ff
db	$8c,$ff,$00,$ff,$00,$ff,$24,$ff,$24,$ff,$24,$ff,$25,$ff,$ff,$ff
db	$f8,$f8,$f0,$f0,$e0,$e0,$00,$00,$00,$00,$e0,$e0,$f0,$f0,$f8,$f8
db	$f8,$f8,$98,$98,$c0,$c0,$c0,$c0,$60,$e0,$60,$e0,$60,$e0,$68,$e8
db	$6c,$ec,$6e,$ee,$6e,$ee,$7e,$fe,$7c,$fc,$f8,$f8,$b0,$f0,$f0,$f0
RES_DOG_PATPAT_2:
db	$00,$00,$00,$00,$03,$03,$07,$07,$0f,$0f,$1f,$1f,$3e,$3e,$7f,$7f
db	$7e,$7f,$65,$67,$0b,$0f,$08,$0f,$10,$1f,$10,$1f,$12,$1f,$12,$1f
db	$11,$1f,$10,$1f,$10,$1f,$11,$1f,$11,$1f,$39,$3f,$2d,$3f,$3f,$3f
db	$03,$03,$07,$07,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$01,$01,$ff,$ff
db	$01,$ff,$8c,$ff,$5a,$ff,$00,$ff,$00,$ff,$70,$ff,$22,$ff,$52,$ff
db	$8c,$ff,$00,$ff,$00,$ff,$24,$ff,$24,$ff,$24,$ff,$25,$ff,$ff,$ff
db	$fc,$fc,$f8,$f8,$f0,$f0,$e0,$e0,$c0,$c0,$80,$80,$f0,$f0,$f8,$f8
db	$f8,$f8,$98,$98,$c0,$c0,$c0,$c0,$60,$e0,$60,$e0,$60,$e0,$68,$e8
db	$6c,$ec,$6e,$ee,$6e,$ee,$7e,$fe,$7c,$fc,$f8,$f8,$b0,$f0,$f0,$f0
RES_DOG_PATPAT_3:
db	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0f,$0f,$1f,$1f,$3f,$3f
db	$7f,$7f,$7c,$7f,$69,$6f,$0b,$0f,$10,$1f,$20,$3f,$22,$3f,$22,$3f
db	$21,$3f,$20,$3f,$20,$3f,$21,$3f,$11,$1f,$39,$3f,$2d,$3f,$3f,$3f
db	$00,$00,$00,$00,$01,$01,$03,$03,$07,$07,$ff,$ff,$ff,$ff,$ff,$ff
db	$ff,$ff,$00,$ff,$8c,$ff,$5a,$ff,$00,$ff,$70,$ff,$22,$ff,$52,$ff
db	$8c,$ff,$00,$ff,$00,$ff,$24,$ff,$24,$ff,$24,$ff,$25,$ff,$ff,$ff
db	$7f,$7f,$ff,$ff,$fe,$fe,$fc,$fc,$f8,$f8,$f0,$f0,$e0,$e0,$f0,$f0
db	$f8,$f8,$f8,$f8,$d8,$d8,$c0,$c0,$60,$e0,$30,$f0,$30,$f0,$34,$f4
db	$36,$f6,$37,$f7,$37,$f7,$3f,$ff,$7e,$fe,$fc,$fc,$b0,$f0,$f0,$f0
RES_DOG_ANGRY_1:
db	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1c,$1c,$3e,$3e,$7f,$7f
db	$7e,$7f,$65,$67,$0b,$0f,$09,$0f,$10,$1f,$10,$1f,$10,$1f,$10,$1f
db	$11,$1f,$10,$1f,$10,$1f,$11,$1f,$11,$1f,$39,$3f,$2d,$3f,$3f,$3f
db	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$fd,$fd,$03,$ff
db	$01,$ff,$8d,$ff,$5a,$7b,$8c,$ff,$00,$ff,$70,$ff,$20,$ff,$50,$ff
db	$8c,$ff,$00,$ff,$00,$ff,$24,$ff,$24,$ff,$24,$ff,$25,$ff,$ff,$ff
db	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$e0,$e0,$f0,$f0,$f8,$f8
db	$f8,$f8,$98,$98,$c0,$c0,$c0,$c0,$60,$e0,$60,$e0,$60,$e0,$68,$e8
db	$6c,$ec,$6e,$ee,$6e,$ee,$7e,$fe,$7c,$fc,$f8,$f8,$b0,$f0,$f0,$f0
RES_DOG_ANGRY_2:
db	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1c,$1c,$3e,$3e,$7f,$7f
db	$7e,$7f,$64,$67,$08,$0f,$0b,$0f,$11,$1f,$10,$1f,$10,$1f,$10,$1f
db	$10,$1f,$10,$1f,$10,$1f,$11,$1f,$11,$1f,$39,$3f,$2d,$3f,$3f,$3f
db	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$fd,$fd,$03,$ff
db	$01,$ff,$01,$ff,$00,$ff,$5a,$7b,$8c,$ff,$70,$ff,$20,$ff,$50,$ff
db	$88,$ff,$00,$ff,$00,$ff,$24,$ff,$24,$ff,$24,$ff,$25,$ff,$ff,$ff
db	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$e0,$e0,$f0,$f0,$f8,$f8
db	$f8,$f8,$98,$98,$c0,$c0,$c0,$c0,$60,$e0,$60,$e0,$60,$e0,$68,$e8
db	$6c,$ec,$6e,$ee,$6e,$ee,$7e,$fe,$7c,$fc,$f8,$f8,$b0,$f0,$f0,$f0
RES_DOG_ANGRY_3:
db	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1c,$1c,$3e,$3e,$7f,$7f
db	$7e,$7f,$67,$67,$09,$0f,$08,$0f,$10,$1f,$10,$1f,$10,$1f,$10,$1f
db	$10,$1f,$10,$1f,$10,$1f,$11,$1f,$11,$1f,$39,$3f,$2d,$3f,$3f,$3f
db	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$fd,$fd,$03,$ff
db	$01,$ff,$07,$ff,$8c,$ff,$d8,$ff,$00,$ff,$70,$ff,$20,$ff,$50,$ff
db	$88,$ff,$00,$ff,$00,$ff,$24,$ff,$24,$ff,$24,$ff,$25,$ff,$ff,$ff
db	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$e0,$e0,$f0,$f0,$f8,$f8
db	$f8,$f8,$98,$98,$c0,$c0,$c0,$c0,$60,$e0,$60,$e0,$60,$e0,$68,$e8
db	$6c,$ec,$6e,$ee,$6e,$ee,$7e,$fe,$7c,$fc,$f8,$f8,$b0,$f0,$f0,$f0
RES_DOG_ANGRY_4:
db	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1c,$1c,$3e,$3e,$7f,$7f
db	$7e,$7f,$67,$67,$09,$0f,$08,$0f,$10,$1f,$17,$1f,$10,$1f,$11,$1f
db	$12,$1f,$10,$1f,$10,$1f,$11,$1f,$11,$1f,$39,$3f,$2d,$3f,$3f,$3f
db	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$fd,$fd,$03,$ff
db	$01,$ff,$07,$ff,$8c,$ff,$d8,$ff,$00,$ff,$77,$ff,$20,$ff,$54,$ff
db	$aa,$ff,$00,$ff,$00,$ff,$24,$ff,$24,$ff,$24,$ff,$25,$ff,$ff,$ff
db	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$e0,$e0,$f0,$f0,$f8,$f8
db	$f8,$f8,$98,$98,$c0,$c0,$c0,$c0,$60,$e0,$60,$e0,$60,$e0,$68,$e8
db	$6c,$ec,$6e,$ee,$6e,$ee,$7e,$fe,$7c,$fc,$f8,$f8,$b0,$f0,$f0,$f0
RES_DOG_HAPPY_1:
db  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1c,$1c,$3e,$3e,$7f,$7f
db  $7e,$7f,$65,$67,$0b,$0f,$09,$0f,$10,$1f,$10,$1f,$12,$1f,$12,$1f
db  $11,$1f,$10,$1f,$10,$1f,$11,$1f,$11,$1f,$39,$3f,$2d,$3f,$3f,$3f
db  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$fd,$fd,$03,$ff
db  $01,$ff,$8c,$ff,$5a,$7b,$8c,$ff,$00,$ff,$70,$ff,$22,$ff,$72,$ff
db  $fc,$ff,$00,$ff,$00,$ff,$24,$ff,$24,$ff,$24,$ff,$25,$ff,$ff,$ff
db  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$e0,$e0,$f0,$f0,$f8,$f8
db  $f8,$f8,$98,$98,$c0,$c0,$c0,$c0,$60,$e0,$60,$e0,$60,$e0,$68,$e8
db  $6c,$ec,$6e,$ee,$6e,$ee,$7e,$fe,$7c,$fc,$f8,$f8,$b0,$f0,$f0,$f0
RES_DOG_HAPPY_2:
db  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1c,$1c,$3e,$3e,$7f,$7f
db  $7e,$7f,$65,$67,$0b,$0f,$08,$0f,$10,$1f,$10,$1f,$12,$1f,$12,$1f
db  $11,$1f,$10,$1f,$10,$1f,$11,$1f,$11,$1f,$39,$3f,$2d,$3f,$3f,$3f
db  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$fd,$fd,$03,$ff
db  $01,$ff,$8c,$ff,$5a,$ff,$00,$ff,$00,$ff,$70,$ff,$22,$ff,$72,$ff
db  $fc,$ff,$70,$ff,$00,$ff,$24,$ff,$24,$ff,$24,$ff,$25,$ff,$ff,$ff
db  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$e0,$e0,$f0,$f0,$f8,$f8
db  $f8,$f8,$98,$98,$c0,$c0,$c0,$c0,$60,$e0,$60,$e0,$60,$e0,$68,$e8
db  $6c,$ec,$6e,$ee,$6e,$ee,$7e,$fe,$7c,$fc,$f8,$f8,$b0,$f0,$f0,$f0
RES_DOG_END::


