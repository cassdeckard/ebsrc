
UNKNOWN_C0A26B: ;$C0A26B
	.A8
	LDX $88
	CPX .LOWORD(UNKNOWN_7E5D78)
	BEQ @UNKNOWN0
	LDA .LOWORD(ENTITY_SCRIPT_VAR7_TABLE),X
	AND #$0000
	CLC
	BNE @UNKNOWN0
	LDA .LOWORD(UNKNOWN_7E5DB8)
	BNE @UNKNOWN0
	LDA .LOWORD(ENTITY_DIRECTIONS),X
	CMP .LOWORD(UNKNOWN_7E5D76)
	BNE @UNKNOWN0
	ASL
	TAX
	LDY .LOWORD(UNKNOWN_7E5D78)
	JSR (.LOWORD(UNKNOWN_C0A350),X)
	ASL
	BEQ @UNKNOWN1
@UNKNOWN0:
	LDX $88
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	SEC
	SBC a:.LOWORD(BG1_X_POS)
	STA .LOWORD(ENTITY_SCREEN_X_TABLE),X
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	SEC
	SBC a:.LOWORD(BG1_Y_POS)
	STA .LOWORD(ENTITY_SCREEN_Y_TABLE),X
@UNKNOWN1:
	LDX $88
	RTS
