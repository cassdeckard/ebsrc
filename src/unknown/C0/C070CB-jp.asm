
UNKNOWN_C070CB: ;$C070CB
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 24
	STY $02
	TXY
	STY $16
	STA $14
	LDA a:.LOWORD(UNKNOWN_7E0081)
	BEQ @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN7)
@UNKNOWN0:
	JSL UNKNOWN_C48C69
	LDA $14
	TAX
	XBA
	AND #$00FF
	STA $04
	LDY $16
	TYA
	ASL
	ASL
	ASL
	TAY
	STY $16
	LDA $02
	ASL
	ASL
	ASL
	STA $02
	LDA .LOWORD(GAME_STATE)+game_state::walking_style
	BEQ @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN4)
@UNKNOWN1:
	TXA
	JSR a:.LOWORD(UNKNOWN_C0705F)
	CMP #$0000
	BEQ @UNKNOWN2
	JMP a:.LOWORD(@UNKNOWN7)
@UNKNOWN2:
	LDA .LOWORD(UNKNOWN_7E5DCA)
	STA .LOWORD(GAME_STATE)+game_state::leader_direction
	STZ .LOWORD(UNKNOWN_7E5DB8)
	LDA #$0003
	STA .LOWORD(MISC_DEBUG_FLAGS)
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E5DBA)
	LDA $04
	XBA
	AND #$FF00
	STA .LOWORD(UNKNOWN_7E5DC4)
	LDA $04
	ASL
	TAX
	LDY $16
	TYA
	CLC
	ADC f:UNKNOWN_C3E1D8+56,X
	STA $14
	LDA $02
	CLC
	ADC f:UNKNOWN_C3E1D8+64,X
	STA $02
	STA $0E
	LDY $14
	LDX .LOWORD(GAME_STATE)+game_state::leader_y_coord
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	JSL UNKNOWN_C48D58
	TAY
	STY $12
	BNE @UNKNOWN3
	INY
	STY $12
@UNKNOWN3:
	LDX #$0006
	STX $16
	LDA $04
	ASL
	TAX
	LDA f:UNKNOWN_C3E1D8+40,X
	LDX $16
	JSL UNKNOWN_C48E6B
	LOADPTR UNKNOWN_C06F82, $0E
	LDY $12
	TYA
	JSL UNKNOWN_C0DBE6
	BRA @UNKNOWN6
@UNKNOWN4:
	LDA $04
	ASL
	TAX
	TYA
	CLC
	ADC f:UNKNOWN_C3E1D8+72,X
	STA $14
	LDA $02
	CLC
	ADC f:UNKNOWN_C3E1D8+80,X
	STA $02
	STA $0E
	LDY $14
	LDX .LOWORD(GAME_STATE)+game_state::leader_y_coord
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	JSL UNKNOWN_C48D58
	TAY
	STY $12
	BNE @UNKNOWN5
	INY
	STY $12
@UNKNOWN5:
	LDX #$000C
	STX $16
	LDA $04
	ASL
	TAX
	LDA f:UNKNOWN_C3E1D8+48,X
	LDX $16
	JSL UNKNOWN_C48E6B
	LOADPTR UNKNOWN_C06FED, $0E
	LDY $12
	TYA
	JSL UNKNOWN_C0DBE6
@UNKNOWN6:
	LDA $14
	STA .LOWORD(UNKNOWN_7E5DCC)
	LDA $02
	STA .LOWORD(UNKNOWN_7E5DCE)
	JSL UNKNOWN_C48E95
@UNKNOWN7:
	PLD
	RTS