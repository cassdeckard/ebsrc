
UNKNOWN_C4B59F: ;$C4B59F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 52
	STY $04
	STX $02
	STA $32
	LDA $54
	STA $30
	LDY $52
	STY $2E
	LDA $50
	STA $2C
	LDA $4E
	STA $2A
	LDX $4C
	STX $28
	LDA $4A
	STA $26
	LDA $48
	STA $24
	LDX $46
	STX $22
	MOVE_INT $42, $06
	STZ $20
	LDA $02
	STA .LOWORD(UNKNOWN_7EB438)
	LDA $02
	STA .LOWORD(UNKNOWN_7EB43A)
	LDA $02
	CLC
	ADC $32
	STA .LOWORD(UNKNOWN_7EB43C)
	LDX $04
	LDA a:.LOWORD(RAM),X
	STA .LOWORD(UNKNOWN_7EB400)
	LDX $04
	LDY a:.LOWORD(RAM)+2,X
	STY .LOWORD(UNKNOWN_7EB402)
	LDX $22
	STX .LOWORD(UNKNOWN_7EB404)
	JSL MULT16
	STA .LOWORD(UNKNOWN_7EB406)
	MOVE_INT $06, .LOWORD(UNKNOWN_7EB3FC)
	LDA $30
	ASL
	STA $02
	INC
	INC
	JSR a:.LOWORD(UNKNOWN_C4B587)
	STA $1E
	STA .LOWORD(UNKNOWN_7EB408)
	CLC
	ADC $02
	STA .LOWORD(UNKNOWN_7EB40A)
	LDA $1E
	STA .LOWORD(UNKNOWN_7EB40E)
	STA .LOWORD(UNKNOWN_7EB40C)
	LDA .LOWORD(UNKNOWN_7EB402)
	EOR #$FFFF
	INC
	STA .LOWORD(UNKNOWN_7EB410)
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EB412)
	LDA .LOWORD(UNKNOWN_7EB402)
	STA .LOWORD(UNKNOWN_7EB414)
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7EB416)
	STA .LOWORD(UNKNOWN_7EB418)
	STZ .LOWORD(UNKNOWN_7EB41A)
	STZ .LOWORD(UNKNOWN_7EB41C)
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EB41E)
	STA .LOWORD(UNKNOWN_7EB420)
	STZ .LOWORD(UNKNOWN_7EB422)
	STZ .LOWORD(UNKNOWN_7EB424)
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7EB426)
	STA .LOWORD(UNKNOWN_7EB428)
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EB42A)
	STA .LOWORD(UNKNOWN_7EB42C)
	STA .LOWORD(UNKNOWN_7EB42E)
	STA .LOWORD(UNKNOWN_7EB430)
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7EB432)
	STA .LOWORD(UNKNOWN_7EB434)
	STA .LOWORD(UNKNOWN_7EB436)
	LDA $2E
	CMP #$00FB
	BCC @UNKNOWN0
	LDA #$00FB
	STA $2E
@UNKNOWN0:
	LDA $28
	ASL
	JSR a:.LOWORD(UNKNOWN_C4B587)
	STA $1C
	LDY $1C
	LDX $2A
	LDA $28
	JSR a:.LOWORD(UNKNOWN_C4B859)
	LDA $2E
	ASL
	ASL
	JSR a:.LOWORD(UNKNOWN_C4B587)
	STA $2A
	JSR a:.LOWORD(UNKNOWN_C4B7A5)
	STZ $1A
	STZ $18
	LDA #$0000
	STA $04
	JMP @UNKNOWN10
@UNKNOWN1:
	LDA $04
	ASL
	TAY
	LDA ($1C),Y
	STA $02
	STA $32
	LDX $02
	LDA a:.LOWORD(RAM)+2,X
	CMP $1A
	BNE @UNKNOWN2
	LDX $02
	LDA a:.LOWORD(RAM)+4,X
	CMP $18
	BEQ @UNKNOWN6
@UNKNOWN2:
	LDY #$0001
	STY $16
	LDX $02
	LDA a:.LOWORD(RAM)+2,X
	STA $1A
	LDX $02
	LDA a:.LOWORD(RAM)+4,X
	STA $18
	LDA $04
	INC
	STA $1E
	BRA @UNKNOWN4
@UNKNOWN3:
	ASL
	TAY
	LDA ($1C),Y
	TAX
	LDA a:.LOWORD(RAM)+2,X
	CMP $1A
	BNE @UNKNOWN5
	LDA a:.LOWORD(RAM)+4,X
	CMP $18
	BNE @UNKNOWN5
	LDY $16
	INY
	STY $16
	LDA $1E
	INC
	STA $1E
@UNKNOWN4:
	CMP $28
	BCC @UNKNOWN3
@UNKNOWN5:
	LDA $04
	ASL
	CLC
	ADC $1C
	TAX
	LDY $16
	TYA
	JSR a:.LOWORD(UNKNOWN_C4B923)
	LDY $16
	STY $0E
	LDA $2E
	STA $10
	LDA $2C
	STA $12
	LDY $02
	LDX $26
	LDA $24
	JSR a:.LOWORD(UNKNOWN_C4BAF6)
@UNKNOWN6:
	LDY $2A
	LDX $2E
	LDA $02
	CLC
	ADC #$0006
	JSR a:.LOWORD(UNKNOWN_C4BD9A)
	LDX $02
	STA a:.LOWORD(RAM)+14,X
	LDX $2A
	JSR a:.LOWORD(UNKNOWN_C4BF7F)
	STA $14
	ASL
	ASL
	JSR a:.LOWORD(UNKNOWN_C4B587)
	STA $22
	STZ $1E
	BRA @UNKNOWN8
@UNKNOWN7:
	LDA $1E
	ASL
	ASL
	TAX
	STX $02
	LDA $22
	CLC
	ADC $02
	TAY
	TXA
	CLC
	ADC $2A
	TAX
	MOVE_INT_XPTRSRC_YPTRDEST a:.LOWORD(RAM), a:.LOWORD(RAM)
	INC $1E
@UNKNOWN8:
	LDA $1E
	CMP $14
	BCC @UNKNOWN7
	LDA $14
	LDX $32
	STX $02
	STA a:.LOWORD(RAM)+10,X
	LDA $22
	LDX $02
	STA a:.LOWORD(RAM)+12,X
	LDA $14
	BEQ @UNKNOWN9
	INC $20
@UNKNOWN9:
	INC $04
@UNKNOWN10:
	LDA $04
	CMP $28
	BCCL @UNKNOWN1
	LDA $20
	PLD
	RTL
