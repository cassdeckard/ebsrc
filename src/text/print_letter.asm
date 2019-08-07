
PRINT_LETTER: ;$C10CB6
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TAY
	STY $10
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	CMP #$FFFF
	BNE @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN8)
@UNKNOWN0:
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+21,X
	LDY $10
	TYX
	JSL UNKNOWN_C44E61
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	CMP .LOWORD(UNKNOWN_7E88E2)
	BEQ @UNKNOWN1
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E9623)
@UNKNOWN1:
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(UNKNOWN_7E964F)
	CMP #$0002
	BNE @UNKNOWN2
	LDX #$0001
	BRA @UNKNOWN4
@UNKNOWN2:
	LDA .LOWORD(UNKNOWN_7E964F)
	CMP #$0003
	BNE @UNKNOWN3
	LDX #$0000
	BRA @UNKNOWN4
@UNKNOWN3:
	LDX #$0000
	LDA .LOWORD(BLINKING_TRIANGLE_FLAG)
	BNE @UNKNOWN4
	LDX #$0001
@UNKNOWN4:
	CPX #$0000
	BEQ @UNKNOWN5
	LDA .LOWORD(UNKNOWN_7E9622)
	AND #$00FF
	BNE @UNKNOWN5
	LDY $10
	CPY #$0020
	BEQ @UNKNOWN5
	CPY #$0050
	BEQ @UNKNOWN5
	LDA #SFX::TEXT_PRINT
	JSL PLAY_SOUND
@UNKNOWN5:
	LDA .LOWORD(UNKNOWN_7E9622)
	AND #$00FF
	BNE @UNKNOWN8
	LDX .LOWORD(SELECTED_TEXT_SPEED)
	INX
	STX $0E
	BRA @UNKNOWN7
@UNKNOWN6:
	JSL UNKNOWN_C12DD5
	LDX $0E
	DEX
	STX $0E
@UNKNOWN7:
	BNE @UNKNOWN6
@UNKNOWN8:
	PLD
	RTS
