
UNKNOWN_C09FAE_ENTRY2: ;$C09FC8
	LDX $88
UNKNOWN_C09FAE_ENTRY3:
	LDA .LOWORD(ENTITY_ABS_X_FRACTION_TABLE),X
	CLC
	ADC .LOWORD(ENTITY_DELTA_X_FRACTION_TABLE),X
	STA .LOWORD(ENTITY_ABS_X_FRACTION_TABLE),X
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	ADC .LOWORD(ENTITY_DELTA_X_TABLE),X
	STA .LOWORD(ENTITY_ABS_X_TABLE),X
	LDA .LOWORD(ENTITY_ABS_Y_FRACTION_TABLE),X
	CLC
	ADC .LOWORD(ENTITY_DELTA_Y_FRACTION_TABLE),X
	STA .LOWORD(ENTITY_ABS_Y_FRACTION_TABLE),X
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	ADC .LOWORD(ENTITY_DELTA_Y_TABLE),X
	STA .LOWORD(ENTITY_ABS_Y_TABLE),X
UNKNOWN_C09FAE_ENTRY4:
	RTS
