
UNKNOWN_C40023: ;$C40023
	.A16
	LDX $8A
	LDA .LOWORD(CURRENT_ENTITY_SLOT)
	AND #$000F
	STA .LOWORD(ENTITY_SLEEP_FRAMES),X
	RTL
