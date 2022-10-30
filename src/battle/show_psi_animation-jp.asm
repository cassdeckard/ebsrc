
SHOW_PSI_ANIMATION: ;$C2E116
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 36
	STA $02
	LDA .LOWORD(LOADED_BG_DATA_LAYER1) + loaded_bg_data::bitdepth
	AND #$00FF
	CMP #$0002
	BNE @UNKNOWN1
	LOADPTR UNKNOWN_7F8000, $06
	LOADPTR $CC0000, $0A
	LDA $02
	OPTIMIZED_MULT $04, 12
	TAX
	LDA f:PSI_ANIM_CFG,X
	CLC
	ADC $0A
	STA $0A
	STA $0E
	LDA $0C
	STA $10
	MOVE_INT $06, $12
	JSL DECOMP
	COPY_TO_VRAM3P $06, $0000, $1000, $0000
	.A16
	LDA #$0260
	STA .LOWORD(UNKNOWN_7E1BCA)
	JMP @UNKNOWN6
@UNKNOWN1:
	LOADPTR UNKNOWN_7F0000, $06
	LOADPTR $CC0000, $0A
	LDA $02
	OPTIMIZED_MULT $04, 12
	TAX
	LDA f:PSI_ANIM_CFG,X
	CLC
	ADC $0A
	STA $0A
	STA $0E
	LDA $0C
	STA $10
	MOVE_INT $06, $12
	JSL DECOMP
	LOADPTR UNKNOWN_7F8000, $0A
	LDX #$0000
	JMP @UNKNOWN4
@UNKNOWN2:
	LDA [$06]
	STA [$0A]
	INC $06
	INC $06
	INC $0A
	INC $0A
	LDA [$06]
	STA [$0A]
	INC $06
	INC $06
	MOVE_INT $06, $20
	MOVE_INT $0A, $06
	INC $06
	INC $06
	LDA [$20]
	STA [$06]
	MOVE_INT $20, $0A
	INC $0A
	INC $0A
	INC $06
	INC $06
	MOVE_INT $06, $1C
	LDA [$0A]
	STA [$1C]
	MOVE_INT $0A, $06
	INC $06
	INC $06
	MOVE_INT $1C, $0A
	INC $0A
	INC $0A
	LDA [$06]
	STA [$0A]
	INC $06
	INC $06
	INC $0A
	INC $0A
	LDA [$06]
	STA [$0A]
	INC $06
	INC $06
	INC $0A
	INC $0A
	LDA [$06]
	STA [$0A]
	INC $06
	INC $06
	INC $0A
	INC $0A
	LDA [$06]
	STA [$0A]
	INC $06
	INC $06
	INC $0A
	INC $0A
	LDA #$0000
	STA [$0A]
	INC $0A
	INC $0A
	STA [$0A]
	INC $0A
	INC $0A
	STA [$0A]
	INC $0A
	INC $0A
	STA [$0A]
	INC $0A
	INC $0A
	STA [$0A]
	INC $0A
	INC $0A
	STA [$0A]
	INC $0A
	INC $0A
	STA [$0A]
	INC $0A
	INC $0A
	STA [$0A]
	INC $0A
	INC $0A
	INX
@UNKNOWN4:
	CPX #$0100
	BCCL @UNKNOWN2
	COPY_TO_VRAM3 UNKNOWN_7F8000, $0000, $2000, $0000
	.A16
	LDA #$0280
	STA .LOWORD(UNKNOWN_7E1BCA)
@UNKNOWN6:
	JSL WAIT_UNTIL_NEXT_FRAME
	LOADPTR PSI_ANIM_PALETTES, $06
	LDA $02
	ASL
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX #$0008
	LDA #$1B50
	JSL MEMCPY16
	MOVE_INT $06, $0E
	LDX #$0008
	LDA .LOWORD(UNKNOWN_7E1BCA)
	JSL MEMCPY16
	LOADPTR UNKNOWN_7F0000, $0A
	MOVE_INT $0A, $06
	MOVE_INT $06, .LOWORD(UNKNOWN_7E1BA1)
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E1B9E)
	REP #PROC_FLAGS::ACCUM8
	LOADPTR PSI_ANIM_CFG, $06
	MOVE_INT $06, $1C
	LDA $02
	OPTIMIZED_MULT $04, 12
	STA $1A
	INC
	INC
	CLC
	ADC $06
	STA $06
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	STA .LOWORD(UNKNOWN_7E1B9E)+1
	REP #PROC_FLAGS::ACCUM8
	LDA $1A
	CLC
	ADC #$0006
	MOVE_INTX $1C, $06
	CLC
	ADC $06
	STA $06
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	STA .LOWORD(UNKNOWN_7E1BA0)
	REP #PROC_FLAGS::ACCUM8
	LDA $1A
	INC
	INC
	INC
	MOVE_INTX $1C, $06
	CLC
	ADC $06
	STA $06
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	STA .LOWORD(UNKNOWN_7E1BA8)
	REP #PROC_FLAGS::ACCUM8
	LDA $1A
	INC
	INC
	INC
	INC
	MOVE_INTX $1C, $06
	CLC
	ADC $06
	STA $06
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	STA .LOWORD(UNKNOWN_7E1BA5)
	REP #PROC_FLAGS::ACCUM8
	LDA $1A
	CLC
	ADC #$0005
	MOVE_INTX $1C, $06
	CLC
	ADC $06
	STA $06
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	STA .LOWORD(UNKNOWN_7E1BA6)
	STZ .LOWORD(UNKNOWN_7E1BA7)
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E1BA9)
	REP #PROC_FLAGS::ACCUM8
	LDA $1A
	CLC
	ADC #$0008
	MOVE_INTX $1C, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	STA .LOWORD(UNKNOWN_7E1BCC)
	LDA $1A
	CLC
	ADC #$0009
	MOVE_INTX $1C, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	STA .LOWORD(UNKNOWN_7E1BCE)
	LDA $1A
	CLC
	ADC #$000A
	MOVE_INTX $1C, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$001F
	STA .LOWORD(UNKNOWN_7E1BD0)
	LDA [$06]
	LSR
	LSR
	LSR
	LSR
	LSR
	AND #$001F
	STA .LOWORD(UNKNOWN_7E1BD2)
	SEP #PROC_FLAGS::INDEX8
	LDY #$000A
	LDA [$06]
	JSL ASR8_UNKNOWN1
	AND #$001F
	STA .LOWORD(UNKNOWN_7E1BD4)
	LOADPTR PSI_ANIM_POINTERS, $06
	LDA $02
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	REP #PROC_FLAGS::INDEX8
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT $06, $0E
	MOVE_INT $0A, $12
	JSL DECOMP
	JSL UNKNOWN_C2DE0F
	PROMOTENEARPTR .LOWORD(CUR_SPRITE_PALS), $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDX #$0080
	LDA #$0380
	JSL MEMCPY16
	LDA #$0000
	STA $1A
	BRA @UNKNOWN8
@UNKNOWN7:
	ASL
	TAX
	STZ .LOWORD(UNKNOWN_7EAEE7),X
	LDA $1A
	INC
	STA $1A
@UNKNOWN8:
	CMP #$0004
	BCC @UNKNOWN7
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:battler::consciousness,X
	AND #$00FF
	BEQL @UNKNOWN26
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	CMP #$0001
	BNEL @UNKNOWN26
	STZ .LOWORD(UNKNOWN_7EAD9A)
	LDA $02
	OPTIMIZED_MULT $04, 12
	CLC
	ADC #$0007
	TAX
	LDA f:PSI_ANIM_CFG,X
	AND #$00FF
	BEQ @UNKNOWN12
	CMP #$0003
	BEQ @UNKNOWN12
	CMP #$0001
	BEQ @UNKNOWN14
	CMP #$0002
	BEQL @UNKNOWN20
	JMP @UNKNOWN24
@UNKNOWN12:
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:battler::sprite_x,X
	AND #$00FF
	STA $02
	LDA #$0080
	SEC
	SBC $02
	STA .LOWORD(UNKNOWN_7EAD9A)
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:battler::sprite_y,X
	AND #$00FF
	STA $02
	LDA #$0090
	SEC
	SBC $02
	STA .LOWORD(UNKNOWN_7EAD9C)
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:battler::sprite,X
	JSR a:.LOWORD(GET_BATTLE_SPRITE_HEIGHT)
	CMP #$0008
	BNE @UNKNOWN13
	LDA .LOWORD(UNKNOWN_7EAD9C)
	CLC
	ADC #$0010
	STA .LOWORD(UNKNOWN_7EAD9C)
@UNKNOWN13:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	LDX .LOWORD(CURRENT_TARGET)
	STA a:battler::use_alt_spritemap,X
	LDX .LOWORD(CURRENT_TARGET)
	REP #PROC_FLAGS::ACCUM8
	LDA a:battler::vram_sprite_index,X
	AND #$00FF
	ASL
	TAX
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EAEE7),X
	JMP @UNKNOWN24
@UNKNOWN14:
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:battler::sprite_y,X
	AND #$00FF
	STA $02
	LDA #$0090
	SEC
	SBC $02
	STA .LOWORD(UNKNOWN_7EAD9C)
	LDY #$0000
	STY $1A
	LDA #.LOWORD(BATTLERS_TABLE) + (.SIZEOF(battler) * 8)
	STA $02
	LDX #$0008
	STX $18
	BRA @UNKNOWN18
@UNKNOWN15:
	LDX $02
	LDA a:battler::consciousness,X
	AND #$00FF
	BEQ @UNKNOWN17
	LDX $02
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN17
	LDX $02
	LDA a:battler::afflictions + STATUS_GROUP::PERSISTENT_EASYHEAL,X
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN17
	LDX $02
	SEP #PROC_FLAGS::ACCUM8
	LDA a:battler::sprite_y,X
	LDX .LOWORD(CURRENT_TARGET)
	CMP a:battler::sprite_y,X
	BNE @UNKNOWN17
	LDX $02
	REP #PROC_FLAGS::ACCUM8
	LDA a:battler::sprite,X
	JSR a:.LOWORD(GET_BATTLE_SPRITE_HEIGHT)
	CMP #$0008
	BNE @UNKNOWN16
	LDY #$0001
	STY $1A
@UNKNOWN16:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	LDX $02
	STA a:battler::use_alt_spritemap,X
	LDX $02
	REP #PROC_FLAGS::ACCUM8
	LDA a:battler::vram_sprite_index,X
	AND #$00FF
	ASL
	TAX
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EAEE7),X
@UNKNOWN17:
	REP #PROC_FLAGS::ACCUM8
	LDA $02
	CLC
	ADC #.SIZEOF(battler)
	STA $02
	LDX $18
	INX
	STX $18
@UNKNOWN18:
	CPX #$0020
	BCCL @UNKNOWN15
	LDY $1A
	BEQ @UNKNOWN24
	LDA .LOWORD(UNKNOWN_7EAD9C)
	CLC
	ADC #$0010
	STA .LOWORD(UNKNOWN_7EAD9C)
	BRA @UNKNOWN24
@UNKNOWN20:
	LDA #$0010
	STA .LOWORD(UNKNOWN_7EAD9C)
	LDY #.LOWORD(BATTLERS_TABLE) + .SIZEOF(battler) * 8
	LDX #$0008
	STX $16
	BRA @UNKNOWN23
@UNKNOWN21:
	LDA a:battler::consciousness,Y
	AND #$00FF
	BEQ @UNKNOWN22
	LDA a:battler::ally_or_enemy,Y
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN22
	LDA a:battler::afflictions + STATUS_GROUP::PERSISTENT_EASYHEAL,Y
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN22
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA a:battler::use_alt_spritemap,Y
	REP #PROC_FLAGS::ACCUM8
	LDA a:battler::vram_sprite_index,Y
	AND #$00FF
	ASL
	TAX
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EAEE7),X
@UNKNOWN22:
	TYA
	CLC
	ADC #.SIZEOF(battler)
	TAY
	LDX $16
	INX
	STX $16
@UNKNOWN23:
	CPX #$0020
	BCC @UNKNOWN21
@UNKNOWN24:
	LDA .LOWORD(LOADED_BG_DATA_LAYER1) + loaded_bg_data::bitdepth
	AND #$00FF
	CMP #$0002
	BNE @UNKNOWN25
	LDA .LOWORD(UNKNOWN_7EAD9A)
	STA a:.LOWORD(BG2_X_POS)
	LDA .LOWORD(UNKNOWN_7EAD9C)
	STA a:.LOWORD(BG2_Y_POS)
	BRA @UNKNOWN26
@UNKNOWN25:
	LDA .LOWORD(UNKNOWN_7EAD9A)
	STA a:.LOWORD(BG1_X_POS)
	LDA .LOWORD(UNKNOWN_7EAD9C)
	STA a:.LOWORD(BG1_Y_POS)
@UNKNOWN26:
	PLD
	RTL
