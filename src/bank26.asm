.SEGMENT "BANK26"
.INCLUDE "common.asm"
.ORG $E60000

AUDIO_PACK_1: ;$E60000
	.INCBIN "src/bin/audiopacks/1.bin"

AUDIO_PACK_74: ;$E645D8
	.INCBIN "src/bin/audiopacks/74.bin"

AUDIO_PACK_76: ;$E68B9A
	.INCBIN "src/bin/audiopacks/76.bin"

AUDIO_PACK_47: ;$E6CF08
	.INCBIN "src/bin/audiopacks/47.bin"

AUDIO_PACK_73: ;$E6FF18
	.INCBIN "src/bin/audiopacks/73.bin"