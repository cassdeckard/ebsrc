
UNKNOWN_C0AA6E: ;$C0AA6E
	LDX $88
	LDA .LOWORD(UNKNOWN_30X2_TABLE_3),X
	BNE @UNKNOWN0
	JSL MOVEMENT_DATA_READ8
	STY $94
	STA .LOWORD(UNKNOWN_30X2_TABLE_34),X
	JSL MOVEMENT_DATA_READ8
	STY $94
	STA .LOWORD(UNKNOWN_30X2_TABLE_14),X
	STA .LOWORD(UNKNOWN_7E2892)
	TXY
	JSL UNKNOWN_C0A3A4_ENTRY4
	RTL
@UNKNOWN0:
	LDX $88
	JSL MOVEMENT_DATA_READ8
	STY $94
	STA .LOWORD(UNKNOWN_30X2_TABLE_34),X
	JSL MOVEMENT_DATA_READ8
	STY $94
	ASL
	STA .LOWORD(UNKNOWN_30X2_TABLE_14),X
	STX .LOWORD(UNKNOWN_7E2896)
	JSR a:.LOWORD(UNKNOWN_C0A794)
	RTL