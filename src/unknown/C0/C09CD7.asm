
UNKNOWN_C09CD7: ;$C09CD7
	LDA #$8000
	LDX .LOWORD(UNKNOWN_7E0A52)
	BRA @UNKNOWN1
@UNKNOWN0:
	LDY .LOWORD(ENTITY_NEXT_ENTITY_TABLE),X
	STA .LOWORD(ENTITY_NEXT_ENTITY_TABLE),X
	TYX
@UNKNOWN1:
	BPL @UNKNOWN0
	LDX #$003A
	LDY #$FFFF
@UNKNOWN2:
	LDA .LOWORD(ENTITY_NEXT_ENTITY_TABLE),X
	CMP #$8000
	BNE @UNKNOWN3
	TYA
	STA .LOWORD(ENTITY_NEXT_ENTITY_TABLE),X
	TXY
@UNKNOWN3:
	DEX
	DEX
	BPL @UNKNOWN2
	STY .LOWORD(UNKNOWN_7E0A52)
	RTL
