
RESET_VECTOR: ;$C08141
.IF .DEFINED(USA)
	CLC
	XCE
.ENDIF
	JMP f:RESET
