
UNKNOWN_C43573:;$C435E4
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $0E
	LDA .LOWORD(PSI_WINDOW_CHARACTER)
	CMP #$FFFF
	BEQ @UNKNOWN0
	JSR UNKNOWN_C3E6F8
@UNKNOWN0:
	LDA $0E
	STA .LOWORD(PSI_WINDOW_CHARACTER)
	OPTIMIZED_MULT $04, 7
	STA $02
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	OPTIMIZED_MULT $04, 7
	PHA
	ASL
	PLA
	ROR
	STA $04
	LDA #$0010
	SEC
	SBC $04
	CLC
	ADC $02
	ASL
	CLC
	ADC #.LOWORD(BG2_BUFFER)
	CLC
	ADC #$680
	TAX
	LDA #$0007
	STA $0E
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA #$0000
	STA a:.LOWORD(RAM),X
	INX
	INX
	LDA $0E
	DEC
	STA $0E
@UNKNOWN2:
	BNE @UNKNOWN1
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E9623)
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTS