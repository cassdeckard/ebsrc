
BTLACT_MUSHROOMIZE: ;$C28BBE
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEE
	TCD
	JSR a:.LOWORD(ATK_FAIL_CHK)
	CMP #$0000
	BNE @UNKNOWN1
	LDY #STATUS_1::MUSHROOMIZED
	;Status group is same as status id
	TYX
	LDA .LOWORD(CURRENT_TARGET)
	JSR a:.LOWORD(INFLICT_STATUS_BATTLE)
	CMP #$0000
	BEQ @UNKNOWN0
	DISPLAY_BATTLE_TEXT_PTR TEXT_BEGAN_TO_FEEL_STRANGE_MUSHROOMIZED
	BRA @UNKNOWN1
@UNKNOWN0:
	DISPLAY_BATTLE_TEXT_PTR TEXT_IT_DIDNT_WORK_ON_X
@UNKNOWN1:
	PLD
	RTL
