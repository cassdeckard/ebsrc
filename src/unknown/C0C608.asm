
UNKNOWN_C0C608: ;$C0C608
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSL UNKNOWN_C0C4F7
	ASL
	TAX
	LDA f:UNKNOWN_C0C4E7,X
	RTL