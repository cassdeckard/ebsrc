
INITIALIZE_SPC700: ;$C4FB58
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA #$FFFF
	STA .LOWORD(CURRENT_SEQUENCE_PACK)
	STA .LOWORD(CURRENT_PRIMARY_SAMPLE_PACK)
	LDA f:MUSIC_DATASET_TABLE+packtable_entry::sequencepack
	AND #$00FF
	STA $10
	STA .LOWORD(UNKNOWN_7EB543)
	STA .LOWORD(CURRENT_SECONDARY_SAMPLE_PACK)
	LOADPTR MUSIC_PACK_POINTER_TABLE, $06
	LDA $10
	OPTIMIZED_MULT $04, 3
	TAY
	STY $0E
	TYA
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
	LDY $0E
	TYA
	INC
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND .LOWORD(UNKNOWN_7EB547)
	JSL LOAD_SPC700_DATA
	LDA #$0001
	STA .LOWORD(SECTOR_BOUNDARY_BEHAVIOUR_FLAG)
	PLD
	RTL
