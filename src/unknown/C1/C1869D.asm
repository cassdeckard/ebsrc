
UNKNOWN_C1869D: ;$C1869D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	TAX
	BEQ @UNKNOWN0
	LDA a:display_text_state::unknown4,X
	BEQ @UNKNOWN0
	TXA
	CLC
	ADC #display_text_state::saved_text_attributes
	JSL UNKNOWN_C20ABC
@UNKNOWN0:
	RTS
