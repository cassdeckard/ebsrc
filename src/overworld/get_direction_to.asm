
;short getDirectionTo(short targetX, short targetY, short fromX, short fromY)
GET_DIRECTION_TO: ;$C45FA8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STX $04
	STA $02
	LDX $20
	TXA
	STA $10
	TYA
	SEC
	SBC $02
	TAX
	LDA $10
	SEC
	SBC $04
	STA $0E
	STX $02
	LDA #$0000
	CLC
	SBC $02
	BRANCHLTEQS @UNKNOWN2
	LDX #$0000
	BRA @UNKNOWN4
@UNKNOWN2:
	CPX #$0000
	BNE @UNKNOWN3
	LDX #$0001
	BRA @UNKNOWN4
@UNKNOWN3:
	LDX #$0002
@UNKNOWN4:
	LDA $0E
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BRANCHLTEQS @UNKNOWN7
	LDA #$0000
	STA $10
	BRA @UNKNOWN9
@UNKNOWN7:
	LDA $0E
	BNE @UNKNOWN8
	LDA #$0001
	STA $10
	BRA @UNKNOWN9
@UNKNOWN8:
	LDA #$0002
	STA $10
@UNKNOWN9:
	TXA
	ASL
	STA $02
	LDA $10
	OPTIMIZED_MULT $04, 6
	CLC
	ADC $02
	TAX
	LDA f:DIRECTION_MATRIX,X
	PLD
	RTL
