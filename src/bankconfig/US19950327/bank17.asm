.SEGMENT "BANK17"
.INCLUDE "common-usa19950327.asm"

MAP_DATA_TILE_TABLE_CHUNK_7: ;$D70000
	.INCBIN "bin/US19950327/maps/tiles/chunk_07.bin"

MAP_DATA_TILE_TABLE_CHUNK_8: ;$D72800
	.INCBIN "bin/US19950327/maps/tiles/chunk_08.bin"

MAP_DATA_TILE_TABLE_CHUNK_9: ;$D75000
	.INCBIN "bin/US19950327/maps/tiles/chunk_09.bin"

MAP_DATA_TILE_TABLE_CHUNK_10: ;$D78000
	.INCBIN "bin/US19950327/maps/tiles/chunk_10.bin"

.INCLUDE "data/map/global_tileset_palette_data.asm"

.INCLUDE "data/map/per-sector_attributes.asm"

MAP_DATA_TILE_ARRANGEMENT_0: ;$D7C600
	.INCBIN "bin/US19950327/maps/arrangements/0.bin.lzhal"
