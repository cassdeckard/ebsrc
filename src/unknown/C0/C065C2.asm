
UNKNOWN_C065C2: ;$C065C2
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STA $10
	ASL
	TAX
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	LSR
	LSR
	LSR
	CLC
	ADC f:UNKNOWN_C3E230,X
	TAY
	STY $0E
	LDA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	LSR
	LSR
	LSR
	CLC
	ADC f:UNKNOWN_C3E240,X
	STA $02
	LDA $10
	CMP #$0006
	BNE @UNKNOWN0
	DEY
	STY $0E
@UNKNOWN0:
	LDX $02
	TYA
	JSL UNKNOWN_C07477
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
	CPX #$00FF
	BNE @UNKNOWN1
	LDX $02
	LDY $0E
	TYA
	INC
	JSL UNKNOWN_C07477
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
@UNKNOWN1:
	CPX #$00FF
	BEQ @UNKNOWN2
	CPX #$0006
	BNE @UNKNOWN2
	LOADPTR DOOR_DATA&$FF0000, $06
	LDA .LOWORD(UNKNOWN_7E5DBC)
	AND #$7FFF
	CLC
	ADC $06
	STA $06
	LDA .LOWORD(UNKNOWN_7E5DBE)
	STA .LOWORD(UNKNOWN_7E5DDC)
	MOVE_INT $06, $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, .LOWORD(UNKNOWN_7E5DDE)
	LDA #$FFFE
	STA .LOWORD(CURRENT_TPT_ENTRY)
@UNKNOWN2:
	PLD
	RTL
