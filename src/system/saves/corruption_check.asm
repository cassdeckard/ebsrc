
CORRUPTION_CHECK: ;$C1ECDC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDA .LOWORD(UNKNOWN_7E9F79)
	AND #$00FF
	BEQ @RETURN
	LDA #.LOWORD(UNKNOWN_7E9C8A)
	JSL UNKNOWN_C20A20
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN2F
	LDX #$0000
	STX $12
	BRA @LOOP_ENTRY
@LOOP_BEGIN:
	SEP #PROC_FLAGS::ACCUM8
	LDA f:UNKNOWN_EF05A6,X
	AND .LOWORD(UNKNOWN_7E9F79)
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @SIGNATURE_MATCH
	TXA
	INC
	STORE_INT1632S $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(UNKNOWN_C1AD0A)
	DISPLAY_TEXT_PTR TEXT_SAVE_FILE_LOST
@SIGNATURE_MATCH:
	LDX $12
	INX
	STX $12
@LOOP_ENTRY:
	STX $02
	LDA #$0003
	CLC
	SBC $02
	BRANCHGTS @LOOP_BEGIN
	JSR a:.LOWORD(CLOSE_FOCUS_WINDOW)
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E9F79)
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_7E9C8A)
	JSL UNKNOWN_C20ABC
@RETURN:
	PLD
	RTS
