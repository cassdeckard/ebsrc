
UNKNOWN_C0943C: ;$C0943C
	LDX .LOWORD(FIRST_ENTITY)
	BMI @UNKNOWN1
@UNKNOWN0:
	LDA .LOWORD(ENTITY_TICK_CALLBACK_HIGH),X
	ORA #OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED
	STA .LOWORD(ENTITY_TICK_CALLBACK_HIGH),X
	LDA .LOWORD(ENTITY_NEXT_ENTITY_TABLE),X
	TAX
	BPL @UNKNOWN0
@UNKNOWN1:
	RTL
