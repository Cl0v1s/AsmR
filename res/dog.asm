	
RES_DOG_ANIMATION::

RES_DOG_ANIMATION_PATPAT::
RES_DOG_ANIMATION_PATPAT_FRAME_1::
db $1, $4, $7
db $2, $5, $8
db $3, $6, $9
db $ff
RES_DOG_ANIMATION_PATPAT_FRAME_2::
db $a, $d, $10
db $ff
RES_DOG_ANIMATION_PATPAT_FRAME_3::
db $1 + 2 * 9, $4 + 2 * 9, $7 + 2 * 9
db $2 + 2 * 9, $5 + 2 * 9, $8 + 2 * 9
db $3 + 2 * 9, $6 + 2 * 9, $9 + 2 * 9
db $ff

RES_DOG_ANIMATION_END::


RES_DOG::
RES_DOG_IDLE_1::
db	$00,$00,$00,$00,$1c,$1c,$3e,$3e,$7f,$7f,$7e,$7f,$65,$67,$0b,$0f
db	$09,$0f,$10,$1f,$10,$1f,$12,$1f,$12,$1f,$11,$1f,$10,$1f,$10,$1f
db	$11,$1f,$11,$1f,$39,$3f,$2d,$3f,$3f,$3f,$00,$00,$00,$00,$00,$00
db	$00,$00,$00,$00,$00,$00,$fd,$fd,$03,$ff,$01,$ff,$8c,$ff,$5a,$7b
db	$8c,$ff,$00,$ff,$70,$ff,$22,$ff,$52,$ff,$8c,$ff,$00,$ff,$00,$ff
db	$24,$ff,$24,$ff,$24,$ff,$25,$ff,$ff,$ff,$00,$00,$00,$00,$00,$00
db	$00,$00,$00,$00,$e0,$e0,$f0,$f0,$f8,$f8,$f8,$f8,$98,$98,$c0,$c0
db	$c0,$c0,$60,$e0,$60,$e0,$60,$e0,$68,$e8,$6c,$ec,$6e,$ee,$6e,$ee
db	$7e,$fe,$7c,$fc,$f8,$f8,$b0,$f0,$f0,$f0,$00,$00,$00,$00,$00,$00

RES_DOG_PATPAT_2::
db	$00,$00,$00,$00,$00,$00,$3e,$3e,$7f,$7f,$7e,$7f,$65,$67,$0b,$0f
db	$08,$0f,$10,$1f,$10,$1f,$12,$1f,$12,$1f,$11,$1f,$10,$1f,$10,$1f
db	$11,$1f,$11,$1f,$39,$3f,$2d,$3f,$3f,$3f,$00,$00,$00,$00,$00,$00
db	$00,$00,$00,$00,$00,$00,$01,$01,$ff,$ff,$01,$ff,$8c,$ff,$5a,$ff
db	$00,$ff,$00,$ff,$70,$ff,$22,$ff,$52,$ff,$8c,$ff,$00,$ff,$00,$ff
db	$24,$ff,$24,$ff,$24,$ff,$25,$ff,$ff,$ff,$00,$00,$00,$00,$00,$00
db	$00,$00,$00,$00,$00,$00,$f0,$f0,$f8,$f8,$f8,$f8,$98,$98,$c0,$c0
db	$c0,$c0,$60,$e0,$60,$e0,$60,$e0,$68,$e8,$6c,$ec,$6e,$ee,$6e,$ee
db	$7e,$fe,$7c,$fc,$f8,$f8,$b0,$f0,$f0,$f0,$00,$00,$00,$00,$00,$00

RES_DOG_PATPAT_3::
db	$00,$00,$00,$00,$00,$00,$00,$00,$3e,$3e,$7f,$7f,$7c,$7f,$69,$6f
db	$0b,$0f,$10,$1f,$20,$3f,$22,$3f,$22,$3f,$21,$3f,$20,$3f,$20,$3f
db	$21,$3f,$11,$1f,$39,$3f,$2d,$3f,$3f,$3f,$00,$00,$00,$00,$00,$00
db	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$ff,$ff,$00,$ff,$8c,$ff
db	$5a,$ff,$00,$ff,$70,$ff,$22,$ff,$52,$ff,$8c,$ff,$00,$ff,$00,$ff
db	$24,$ff,$24,$ff,$24,$ff,$25,$ff,$ff,$ff,$00,$00,$00,$00,$00,$00
db	$00,$00,$00,$00,$00,$00,$00,$00,$70,$70,$f8,$f8,$f8,$f8,$d8,$d8
db	$c0,$c0,$60,$e0,$30,$f0,$30,$f0,$34,$f4,$36,$f6,$37,$f7,$37,$f7
db	$3f,$ff,$7e,$fe,$fc,$fc,$b0,$f0,$f0,$f0,$00,$00,$00,$00,$00,$00
RES_DOG_END::
