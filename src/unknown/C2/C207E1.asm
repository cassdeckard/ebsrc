
UNKNOWN_C207E1: ;$C207E1
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	TAX
	STX $10
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E9649)
	SEP #PROC_FLAGS::INDEX8
	TXY
	JSL ASL16_ENTRY2
	EOR #$FFFF
	AND .LOWORD(UNKNOWN_7E9647)
	STA .LOWORD(UNKNOWN_7E9647)
	REP #PROC_FLAGS::INDEX8
	LDX $10
	CPX .LOWORD(PSI_WINDOW_CHARACTER)
	BNE @UNKNOWN0
	LDA #$0012
	STA $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #$0013
	STA $0E
@UNKNOWN1:
	TXA
	OPTIMIZED_MULT $04, 7
	PHA
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	OPTIMIZED_MULT $04, 7
	PHA
	ASL
	PLA
	ROR
	STA $02
	LDA #$0010
	SEC
	SBC $02
	PLY
	STY $04
	CLC
	ADC $04
	ASL
	STA $02
	LDA $0E
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	CLC
	ADC #$7DFE
	TAX
	LDY #$0008
	BRA @UNKNOWN5
@UNKNOWN2:
	LDA #$0007
	STA $0E
	BRA @UNKNOWN4
@UNKNOWN3:
	LDA #$0000
	STA a:.LOWORD(RAM),X
	INX
	INX
	LDA $0E
	DEC
	STA $0E
@UNKNOWN4:
	BNE @UNKNOWN3
	TXA
	CLC
	ADC #$0032
	TAX
	DEY
@UNKNOWN5:
	BNE @UNKNOWN2
	PLD
	RTL
