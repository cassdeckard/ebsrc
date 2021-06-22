
FIX_ATTACKER_NAME: ;$C23BCF
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 24
	TAY
	STY $16
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00
	STA $0E
	LDX #.SIZEOF(enemy_data::name) + 2
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(ATTACKER_NAME_ADJUST_SCRATCH)
	JSL MEMSET16
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN0
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::npc_id,X
	AND #$00FF
	BNE @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN4)
@UNKNOWN0:
	LOADPTR ENEMY_CONFIGURATION_TABLE, $06
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:.LOWORD(RAM),X
	LDY #.SIZEOF(enemy_data)
	JSL MULT168
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX #.SIZEOF(enemy_data::name)
	LDA #.LOWORD(ATTACKER_NAME_ADJUST_SCRATCH)
	JSR a:.LOWORD(COPY_ENEMY_NAME)
	TAX
	STX $14
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN2_2
	LDY $16
	BNE @UNKNOWN2
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::the_flag,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN1
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:.LOWORD(RAM)+76,X
	JSL UNKNOWN_C2B66A
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	CMP #$0002
	BEQ @UNKNOWN2
@UNKNOWN1:
	LDX .LOWORD(CURRENT_ATTACKER)
	SEP #PROC_FLAGS::ACCUM8
	LDA a:battler::the_flag,X
	CLC
	ADC #$0040
	LDX $14
	STA a:.LOWORD(RAM),X
@UNKNOWN2:
	LDY $16
	BEQ @UNKNOWN2_2
	REP #PROC_FLAGS::ACCUM8
	LDA $A18C
	CMP #$0001
	BCC @UNKNOWN2_2
	BEQ @UNKNOWN2_2
	SEP #PROC_FLAGS::ACCUM8
	LDA #$66
	LDX $14
	STA .LOWORD(RAM),X
	INX
	LDA #$76
	STA .LOWORD(RAM),X
@UNKNOWN2_2:
	LDX .LOWORD(CURRENT_ATTACKER)
	REP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	CMP #$00A0
	BNE @UNKNOWN3
	LDA #.LOWORD(GAME_STATE) + game_state::pet_name
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDX #$0006
	LDA #.LOWORD(ATTACKER_NAME_ADJUST_SCRATCH)
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(ATTACKER_NAME_ADJUST_SCRATCH)+6
@UNKNOWN3:
	LDX #$000C
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(ATTACKER_NAME_ADJUST_SCRATCH)
	JSL REDIRECT_C1AC4A
	BRA @UNKNOWN6
@UNKNOWN4:
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:.LOWORD(RAM),X
	CMP #$0004
	BEQ @UNKNOWN5
	BCS @UNKNOWN6
@UNKNOWN5:
	LDX #$0004
	STX $12
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::row,X
	AND #$00FF
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	LDX $12
	JSL REDIRECT_C1AC4A
@UNKNOWN6:
	PLD
	RTL