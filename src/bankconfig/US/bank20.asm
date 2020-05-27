.SEGMENT "BANK20"
.INCLUDE "common-usa.asm"

TEXT_WINDOW_GFX: ;$E00000
	.INCBIN "bin/US/graphics/text_window.gfx.lzhal"

FLAVOURED_TEXT_GFX: ;$E00754
	.INCBIN "bin/US/graphics/flavoured_text.gfx.lzhal"

MOTHER2_ROMAJI_FONT: ;$E007A0
	.INCBIN "bin/US/fonts/romaji.gfx"

COMPRESSED_SRAM: ;$E009B4
	.INCBIN "bin/US/mystery_sram.bin.lzhal"

MRSATURN_FONT_DATA: ;$E01359
	.INCBIN "bin/US/fonts/mrsaturn.bin"

MRSATURN_FONT_GFX: ;$E013B9
	.INCBIN "bin/US/fonts/mrsaturn.gfx"

.INCLUDE "data/text_window_properties.asm"

.INCLUDE "data/text_window_flavour_palettes.asm"

.INCLUDE "data/movement_text_string_palette.asm"

.INCLUDE "data/map/town_map_gfx_pointers.asm"

TOWN_MAP_ONETT: ;$E021A8
	.INCBIN "bin/US/town_maps/0.bin.lzhal"

TOWN_MAP_TWOSON: ;$E04920
	.INCBIN "bin/US/town_maps/1.bin.lzhal"

TOWN_MAP_THREED: ;$E06721
	.INCBIN "bin/US/town_maps/2.bin.lzhal"

TOWN_MAP_FOURSIDE: ;$E08379
	.INCBIN "bin/US/town_maps/3.bin.lzhal"

TOWN_MAP_SCARABA: ;$E0ADB4
	.INCBIN "bin/US/town_maps/4.bin.lzhal"

TOWN_MAP_SUMMERS: ;$E0C7F1
	.INCBIN "bin/US/town_maps/5.bin.lzhal"

AUDIO_PACK_110: ;$E0ED03
	.INCBIN "bin/US/audiopacks/110.bin"

AUDIO_PACK_6: ;$E0FCE1
	.INCBIN "bin/US/audiopacks/6.bin"
