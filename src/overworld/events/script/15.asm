
MOVEMENT_CODE_15: ;$C09B1F
	LDA [$80],Y
	TAX
	INY
	INY
	LDA [$80],Y
	STA a:.LOWORD(RAM),X
	INY
	INY
	RTS