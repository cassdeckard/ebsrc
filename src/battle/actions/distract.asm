
BTLACT_DISTRACT: ;$C28D5A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	JSR a:.LOWORD(FAIL_ATTACK_ON_NPCS)
	CMP #$0000
	BNE @UNKNOWN1
	JSR a:.LOWORD(SUCCESS_LUCK40)
	CMP #$0000
	BEQ @UNKNOWN0
	LDX .LOWORD(CURRENT_TARGET)
	SEP #PROC_FLAGS::ACCUM8
	LDA a:battler::paralysis_resist,X
	JSR a:.LOWORD(SUCCESS_255)
	.A16
	CMP #$0000
	BEQ @UNKNOWN0
	LDA .LOWORD(CURRENT_TARGET)
	CLC
	ADC #battler::afflictions + STATUS_GROUP::CONCENTRATION
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	BNE @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	LDA #STATUS_4::CANT_CONCENTRATE4
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	DISPLAY_BATTLE_TEXT_PTR TEXT_BATTLE_WAS_NOT_ABLE_TO_CONCENTRATE
	BRA @UNKNOWN1
@UNKNOWN0:
	DISPLAY_BATTLE_TEXT_PTR TEXT_BATTLE_IT_DIDNT_WORK_ON_X
@UNKNOWN1:
	PLD
	RTL
