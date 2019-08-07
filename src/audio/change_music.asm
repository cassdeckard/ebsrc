
CHANGE_MUSIC: ;$C4FBBD
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	TAX
	STX $12
	CPX .LOWORD(CURRENT_MUSIC_TRACK)
	BNE @BEGIN_MUSIC_CHANGE
	JMP a:.LOWORD(@RETURN)
@BEGIN_MUSIC_CHANGE:
	LDA .LOWORD(UNKNOWN_7EB4B6)
	BNE @UNKNOWN1
	JSL PLAY_SOUND_UNKNOWN0
@UNKNOWN1:
	LDX $12
	; Sound stone recordings should play seamlessly
	CPX #MUSIC::SOUNDSTONE_RECORDING_GIANT_STEP
	BCC @STOP_MUSIC
	CPX #MUSIC::SOUNDSTONE_RECORDING_FIRE_SPRING
	BCC @DONT_STOP_MUSIC
	BEQ @DONT_STOP_MUSIC
@STOP_MUSIC:
	LDA #$0001
	JSL UNKNOWN_C0AC0C
	JSL STOP_MUSIC
@DONT_STOP_MUSIC:
	LDX $12
	STX .LOWORD(CURRENT_MUSIC_TRACK)
	TXY
	DEY
	STY $10
	TYA
	OPTIMIZED_MULT $04, 3
	TAX
	LDA f:MUSIC_DATASET_TABLE,X
	AND #$00FF
	STA $0E
	CMP .LOWORD(CURRENT_PRIMARY_SAMPLE_PACK)
	BEQ @SKIP_DATA_LOAD_1
	CMP #$00FF
	BEQ @SKIP_DATA_LOAD_1
	STA .LOWORD(CURRENT_PRIMARY_SAMPLE_PACK)
	LOADPTR MUSIC_PACK_POINTER_TABLE, $06
	LDA $0E
	OPTIMIZED_MULT $04, 3
	STA $02
	LDX $06
	STX $0A
	LDX $08
	STX $0C
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	JSR a:.LOWORD(UNKNOWN_C4FB42)
	TAX
	LDA $02
	INC
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND .LOWORD(UNKNOWN_7EB547)
	JSL LOAD_SPC700_DATA
@SKIP_DATA_LOAD_1:
	LDY $10
	TYA
	OPTIMIZED_MULT $04, 3
	TAX
	INX
	LDA f:MUSIC_DATASET_TABLE,X
	AND #$00FF
	STA $0E
	CMP .LOWORD(CURRENT_SECONDARY_SAMPLE_PACK)
	BEQ @SKIP_DATA_LOAD_2
	CMP #$00FF
	BEQ @SKIP_DATA_LOAD_2
	CMP .LOWORD(UNKNOWN_7EB543)
	BEQ @SKIP_DATA_LOAD_2
	STA .LOWORD(CURRENT_SECONDARY_SAMPLE_PACK)
	LOADPTR MUSIC_PACK_POINTER_TABLE, $06
	LDA $0E
	OPTIMIZED_MULT $04, 3
	STA $02
	LDX $06
	STX $0A
	LDX $08
	STX $0C
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	JSR a:.LOWORD(UNKNOWN_C4FB42)
	TAX
	LDA $02
	INC
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND .LOWORD(UNKNOWN_7EB547)
	JSL LOAD_SPC700_DATA
@SKIP_DATA_LOAD_2:
	LDY $10
	TYA
	OPTIMIZED_MULT $04, 3
	TAX
	INX
	INX
	LDA f:MUSIC_DATASET_TABLE,X
	AND #$00FF
	STA $0E
	CMP .LOWORD(CURRENT_SEQUENCE_PACK)
	BEQ @SKIP_DATA_LOAD_3
	CMP #$00FF
	BEQ @SKIP_DATA_LOAD_3
	STA .LOWORD(CURRENT_SEQUENCE_PACK)
	LOADPTR MUSIC_PACK_POINTER_TABLE, $06
	LDA $0E
	OPTIMIZED_MULT $04, 3
	STA $02
	LDX $06
	STX $0A
	LDX $08
	STX $0C
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	JSR a:.LOWORD(UNKNOWN_C4FB42)
	TAX
	LDA $02
	INC
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND .LOWORD(UNKNOWN_7EB547)
	JSL LOAD_SPC700_DATA
@SKIP_DATA_LOAD_3:
	LDY $10
	TYA
	INC
	JSL UNKNOWN_C0ABBD
@RETURN:
	PLD
	RTL
