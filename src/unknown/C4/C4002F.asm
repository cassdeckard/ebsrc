
UNKNOWN_C4002F: ;$C4002F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #.LOWORD(VWF_BUFFER)
	STA a:.LOWORD(DMA_COPY_RAM_SRC)
	LDA #$0000
	STA a:.LOWORD(UNKNOWN_7E0091)
	LDA #$0010
	STA a:.LOWORD(DMA_COPY_SIZE)
	LDA #$007E
	STA a:.LOWORD(DMA_COPY_RAM_SRC) + 2
	TXA
	ASL
	ASL
	ASL
	CLC
	ADC #$6000
	STA a:.LOWORD(DMA_COPY_VRAM_DEST)
	PHY
	JSL PREPARE_VRAM_COPY_COMMON
	LDA a:.LOWORD(DMA_COPY_RAM_SRC)
	CLC
	ADC #$0010
	STA a:.LOWORD(DMA_COPY_RAM_SRC)
	PLA
	ASL
	ASL
	ASL
	CLC
	ADC #$6000
	STA a:.LOWORD(DMA_COPY_VRAM_DEST)
	JSL PREPARE_VRAM_COPY_COMMON
	LDA a:.LOWORD(INIDISP_MIRROR)
	AND #$0080
	EOR #$0080
	STA .LOWORD(DMA_TRANSFER_FLAG)
	RTS
