
UNKNOWN_C43739: ;$C43739
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	STA $02
	STA $12
	LDA $02
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	STA $04
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY .LOWORD(WINDOW_STATS_TABLE)+10,X
	LDA .LOWORD(WINDOW_STATS_TABLE)+16,X
	JSL MULT16
	ASL
	ASL
	CLC
	ADC .LOWORD(WINDOW_STATS_TABLE)+53,X
	TAY
	STY $10
	LDX #$0000
	STX $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	LDY $10
	LDA a:.LOWORD(RAM),Y
	INY
	INY
	STY $10
	JSL UNKNOWN_C44AF7
	LDX $0E
	INX
	STX $0E
@UNKNOWN1:
	LDA $04
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+10,X
	ASL
	STA $02
	LDX $0E
	TXA
	CMP $02
	BNE @UNKNOWN0
	LDA $12
	STA $02
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+16,X
	TAX
	LDA $02
	JSL UNKNOWN_C436D7
	PLD
	RTL