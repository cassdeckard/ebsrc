
MOVEMENT_CODE_3B_45: ;$C096CF
	LDX $88
	LDA [$80],Y
	AND #$00FF
	CMP #$00FF
	BNE @UNKNOWN0
	LDA #$FFFF
@UNKNOWN0:
	STA .LOWORD(UNKNOWN_30X2_TABLE_14),X
	INY
	RTS