
CLOSE_WINDOW: ;$C3E521
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 24
	STA $16
	CMP #$FFFF
	BNE @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN18)
@UNKNOWN0:
	LDA $16
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	STA $04
	CMP #$FFFF
	BNE @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN18)
@UNKNOWN1:
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	CMP $16
	BNE @UNKNOWN2
	LDA #$FFFF
	STA .LOWORD(CURRENT_FOCUS_WINDOW)
@UNKNOWN2:
	LDA $16
	JSL UNKNOWN_C3E7E3
	LDA $04
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY .LOWORD(WINDOW_STATS_TABLE)+2,X
	STY $14
	LDA .LOWORD(WINDOW_STATS_TABLE),X
	STA $12
	CPY #$FFFF
	BNE @UNKNOWN3
	STA .LOWORD(UNKNOWN_7E88E2)
	BRA @UNKNOWN4
@UNKNOWN3:
	TYA
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA $12
	STA .LOWORD(WINDOW_STATS_TABLE),X
@UNKNOWN4:
	CMP #$FFFF
	BNE @UNKNOWN5
	LDY $14
	STY .LOWORD(UNKNOWN_7E88E0)
	BRA @UNKNOWN6
@UNKNOWN5:
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY $14
	TYA
	STA .LOWORD(WINDOW_STATS_TABLE)+2,X
@UNKNOWN6:
	LDA $04
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	STX $10
	LDA #$FFFF
	STA .LOWORD(WINDOW_STATS_TABLE)+window_stats::id,X
	LDA $16
	ASL
	TAX
	LDA #$FFFF
	STA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDX $10
	LDA .LOWORD(WINDOW_STATS_TABLE)+window_stats::window_x,X
	ASL
	STA $02
	LDA .LOWORD(WINDOW_STATS_TABLE)+window_stats::window_y,X
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
	STA $02
	STA $0E
	LDY .LOWORD(WINDOW_STATS_TABLE)+53,X
	STY $14
	LDX #$0000
	STX $10
	BRA @UNKNOWN10
@UNKNOWN7:
	LDY $14
	LDA a:.LOWORD(RAM),Y
	CMP #$0040
	BNE @UNKNOWN8
	CMP #$0000
	BEQ @UNKNOWN9
@UNKNOWN8:
	LDA a:.LOWORD(RAM),Y
	JSL UNKNOWN_C44AF7
@UNKNOWN9:
	LDA #$0040
	LDY $14
	STA a:.LOWORD(RAM),Y
	INY
	INY
	STY $14
	LDX $10
	INX
	STX $10
@UNKNOWN10:
	LDA $04
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY .LOWORD(WINDOW_STATS_TABLE)+window_stats::width,X
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+window_stats::height,X
	JSL MULT16
	STA $02
	LDX $10
	TXA
	CMP $02
	BCC @UNKNOWN7
	LDY #$0000
	STY $10
	BRA @UNKNOWN14
@UNKNOWN11:
	LDA #$0000
	STA $12
	BRA @UNKNOWN13
@UNKNOWN12:
	LDA #$0000
	LDX $0E
	STX $02
	STA a:.LOWORD(RAM),X
	INC $02
	INC $02
	LDA $02
	STA $0E
	LDA $12
	INC
	STA $12
@UNKNOWN13:
	LDA $04
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+window_stats::width,X
	TAX
	STX $02
	INC $02
	INC $02
	LDA $12
	CMP $02
	BNE @UNKNOWN12
	STX $02
	LDA #$0020
	SEC
	SBC $02
	DEC
	DEC
	ASL
	PHA
	LDA $0E
	STA $02
	PLY
	STY $02
	CLC
	ADC $02
	STA $02
	STA $0E
	LDY $10
	INY
	STY $10
@UNKNOWN14:
	LDA $04
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	STX $12
	LDA .LOWORD(WINDOW_STATS_TABLE)+window_stats::height,X
	STA $02
	INC $02
	INC $02
	LDY $10
	TYA
	CMP $02
	BNE @UNKNOWN11
	JSL UNKNOWN_C45E96
	LDX $12
	LDA .LOWORD(WINDOW_STATS_TABLE)+59,X
	AND #$00FF
	BEQ @UNKNOWN15
	AND #$00FF
	DEC
	ASL
	TAX
	LDA #$FFFF
	STA .LOWORD(WINDOW_EXISTENCE_TABLE)+106,X
@UNKNOWN15:
	LDA $04
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(WINDOW_STATS_TABLE)+59,X
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E9623)
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(UNKNOWN_7E5E7A)
	CMP $16
	BNE @UNKNOWN16
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7E5E7A)
@UNKNOWN16:
	LDA .LOWORD(UNKNOWN_7E5E70)
	AND #$00FF
	BNE @UNKNOWN17
	JSL CALL_C12DD5_WITH_ZERO_9622
	JSL CLEAR_9622
@UNKNOWN17:
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E5E75)
@UNKNOWN18:
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
