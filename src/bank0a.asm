.SEGMENT "BANK0A"
.INCLUDE "common.asm"
.ORG $CA0000

BATTLE_BACKGROUND_GFX_63: ;$CA0000
	.INCBIN"bin/battle_bgs/graphics/63.bin"

BATTLE_BACKGROUND_GFX_64: ;$CA2042
	.INCBIN"bin/battle_bgs/graphics/64.bin"

BATTLE_BACKGROUND_GFX_61: ;$CA382D
	.INCBIN"bin/battle_bgs/graphics/61.bin"

BATTLE_BACKGROUND_GFX_60: ;$CA480F
	.INCBIN"bin/battle_bgs/graphics/60.bin"

BATTLE_BACKGROUND_GFX_42: ;$CA5723
	.INCBIN"bin/battle_bgs/graphics/42.bin"

BATTLE_BACKGROUND_GFX_38: ;$CA65D3
	.INCBIN"bin/battle_bgs/graphics/38.bin"

BATTLE_BACKGROUND_GFX_37: ;$CA7314
	.INCBIN"bin/battle_bgs/graphics/37.bin"

BATTLE_BACKGROUND_GFX_43: ;$CA7F6C
	.INCBIN"bin/battle_bgs/graphics/43.bin"

BATTLE_BACKGROUND_GFX_39: ;$CA8B4F
	.INCBIN"bin/battle_bgs/graphics/39.bin"

BATTLE_BACKGROUND_GFX_41: ;$CA965F
	.INCBIN"bin/battle_bgs/graphics/41.bin"

BATTLE_BACKGROUND_GFX_62: ;$CAA049
	.INCBIN"bin/battle_bgs/graphics/62.bin"

BATTLE_BACKGROUND_GFX_40: ;$CAA8F9
	.INCBIN"bin/battle_bgs/graphics/40.bin"

BATTLE_BACKGROUND_ARR_37: ;$CAB092
	.INCBIN"bin/battle_bgs/arrangements/37.bin"

BATTLE_BACKGROUND_GFX_66: ;$CAB75B
	.INCBIN"bin/battle_bgs/graphics/66.bin"

BATTLE_BACKGROUND_ARR_38: ;$CABE1E
	.INCBIN"bin/battle_bgs/arrangements/38.bin"

BATTLE_BACKGROUND_ARR_39: ;$CAC4A1
	.INCBIN"bin/battle_bgs/arrangements/39.bin"

BATTLE_BACKGROUND_ARR_42: ;$CACB09
	.INCBIN"bin/battle_bgs/arrangements/42.bin"

BATTLE_BACKGROUND_ARR_100: ;$CAD149
	.INCBIN"bin/battle_bgs/arrangements/100.bin"

BATTLE_BACKGROUND_GFX_56: ;$CAD755
	.INCBIN"bin/battle_bgs/graphics/56.bin"

BATTLE_BACKGROUND_GFX_90: ;$CAD79E
	.INCBIN"bin/battle_bgs/graphics/90.bin"

BATTLEBG_GFX_POINTERS: ;$CAD7A1
	.DWORD BATTLE_BACKGROUND_GFX_0
	.DWORD BATTLE_BACKGROUND_GFX_1
	.DWORD BATTLE_BACKGROUND_GFX_2
	.DWORD BATTLE_BACKGROUND_GFX_3
	.DWORD BATTLE_BACKGROUND_GFX_4
	.DWORD BATTLE_BACKGROUND_GFX_5
	.DWORD BATTLE_BACKGROUND_GFX_6
	.DWORD BATTLE_BACKGROUND_GFX_7
	.DWORD BATTLE_BACKGROUND_GFX_8
	.DWORD BATTLE_BACKGROUND_GFX_9
	.DWORD BATTLE_BACKGROUND_GFX_10
	.DWORD BATTLE_BACKGROUND_GFX_11
	.DWORD BATTLE_BACKGROUND_GFX_12
	.DWORD BATTLE_BACKGROUND_GFX_13
	.DWORD BATTLE_BACKGROUND_GFX_14
	.DWORD BATTLE_BACKGROUND_GFX_15
	.DWORD BATTLE_BACKGROUND_GFX_16
	.DWORD BATTLE_BACKGROUND_GFX_17
	.DWORD BATTLE_BACKGROUND_GFX_18
	.DWORD BATTLE_BACKGROUND_GFX_19
	.DWORD BATTLE_BACKGROUND_GFX_20
	.DWORD BATTLE_BACKGROUND_GFX_21
	.DWORD BATTLE_BACKGROUND_GFX_22
	.DWORD BATTLE_BACKGROUND_GFX_23
	.DWORD BATTLE_BACKGROUND_GFX_24
	.DWORD BATTLE_BACKGROUND_GFX_25
	.DWORD BATTLE_BACKGROUND_GFX_26
	.DWORD BATTLE_BACKGROUND_GFX_27
	.DWORD BATTLE_BACKGROUND_GFX_28
	.DWORD BATTLE_BACKGROUND_GFX_29
	.DWORD BATTLE_BACKGROUND_GFX_30
	.DWORD BATTLE_BACKGROUND_GFX_31
	.DWORD BATTLE_BACKGROUND_GFX_32
	.DWORD BATTLE_BACKGROUND_GFX_33
	.DWORD BATTLE_BACKGROUND_GFX_34
	.DWORD BATTLE_BACKGROUND_GFX_35
	.DWORD BATTLE_BACKGROUND_GFX_36
	.DWORD BATTLE_BACKGROUND_GFX_37
	.DWORD BATTLE_BACKGROUND_GFX_38
	.DWORD BATTLE_BACKGROUND_GFX_39
	.DWORD BATTLE_BACKGROUND_GFX_40
	.DWORD BATTLE_BACKGROUND_GFX_41
	.DWORD BATTLE_BACKGROUND_GFX_42
	.DWORD BATTLE_BACKGROUND_GFX_43
	.DWORD BATTLE_BACKGROUND_GFX_44
	.DWORD BATTLE_BACKGROUND_GFX_45
	.DWORD BATTLE_BACKGROUND_GFX_46
	.DWORD BATTLE_BACKGROUND_GFX_47
	.DWORD BATTLE_BACKGROUND_GFX_48
	.DWORD BATTLE_BACKGROUND_GFX_49
	.DWORD BATTLE_BACKGROUND_GFX_50
	.DWORD BATTLE_BACKGROUND_GFX_51
	.DWORD BATTLE_BACKGROUND_GFX_52
	.DWORD BATTLE_BACKGROUND_GFX_53
	.DWORD BATTLE_BACKGROUND_GFX_54
	.DWORD BATTLE_BACKGROUND_GFX_55
	.DWORD BATTLE_BACKGROUND_GFX_56
	.DWORD BATTLE_BACKGROUND_GFX_57
	.DWORD BATTLE_BACKGROUND_GFX_58
	.DWORD BATTLE_BACKGROUND_GFX_59
	.DWORD BATTLE_BACKGROUND_GFX_60
	.DWORD BATTLE_BACKGROUND_GFX_61
	.DWORD BATTLE_BACKGROUND_GFX_62
	.DWORD BATTLE_BACKGROUND_GFX_63
	.DWORD BATTLE_BACKGROUND_GFX_64
	.DWORD BATTLE_BACKGROUND_GFX_65
	.DWORD BATTLE_BACKGROUND_GFX_66
	.DWORD BATTLE_BACKGROUND_GFX_67
	.DWORD BATTLE_BACKGROUND_GFX_68
	.DWORD BATTLE_BACKGROUND_GFX_69
	.DWORD BATTLE_BACKGROUND_GFX_70
	.DWORD BATTLE_BACKGROUND_GFX_71
	.DWORD BATTLE_BACKGROUND_GFX_72
	.DWORD BATTLE_BACKGROUND_GFX_73
	.DWORD BATTLE_BACKGROUND_GFX_74
	.DWORD BATTLE_BACKGROUND_GFX_75
	.DWORD BATTLE_BACKGROUND_GFX_76
	.DWORD BATTLE_BACKGROUND_GFX_77
	.DWORD BATTLE_BACKGROUND_GFX_78
	.DWORD BATTLE_BACKGROUND_GFX_79
	.DWORD BATTLE_BACKGROUND_GFX_80
	.DWORD BATTLE_BACKGROUND_GFX_81
	.DWORD BATTLE_BACKGROUND_GFX_82
	.DWORD BATTLE_BACKGROUND_GFX_83
	.DWORD BATTLE_BACKGROUND_GFX_84
	.DWORD BATTLE_BACKGROUND_GFX_85
	.DWORD BATTLE_BACKGROUND_GFX_86
	.DWORD BATTLE_BACKGROUND_GFX_87
	.DWORD BATTLE_BACKGROUND_GFX_88
	.DWORD BATTLE_BACKGROUND_GFX_89
	.DWORD BATTLE_BACKGROUND_GFX_90
	.DWORD BATTLE_BACKGROUND_GFX_91
	.DWORD BATTLE_BACKGROUND_GFX_92
	.DWORD BATTLE_BACKGROUND_GFX_93
	.DWORD BATTLE_BACKGROUND_GFX_94
	.DWORD BATTLE_BACKGROUND_GFX_95
	.DWORD BATTLE_BACKGROUND_GFX_96
	.DWORD BATTLE_BACKGROUND_GFX_97
	.DWORD BATTLE_BACKGROUND_GFX_98
	.DWORD BATTLE_BACKGROUND_GFX_99
	.DWORD BATTLE_BACKGROUND_GFX_100
	.DWORD BATTLE_BACKGROUND_GFX_101
	.DWORD BATTLE_BACKGROUND_GFX_102

BATTLEBG_ARR_POINTERS: ;$CAD93D
	.DWORD BATTLE_BACKGROUND_ARR_0
	.DWORD BATTLE_BACKGROUND_ARR_1
	.DWORD BATTLE_BACKGROUND_ARR_2
	.DWORD BATTLE_BACKGROUND_ARR_3
	.DWORD BATTLE_BACKGROUND_ARR_4
	.DWORD BATTLE_BACKGROUND_ARR_5
	.DWORD BATTLE_BACKGROUND_ARR_6
	.DWORD BATTLE_BACKGROUND_ARR_7
	.DWORD BATTLE_BACKGROUND_ARR_8
	.DWORD BATTLE_BACKGROUND_ARR_9
	.DWORD BATTLE_BACKGROUND_ARR_10
	.DWORD BATTLE_BACKGROUND_ARR_11
	.DWORD BATTLE_BACKGROUND_ARR_12
	.DWORD BATTLE_BACKGROUND_ARR_13
	.DWORD BATTLE_BACKGROUND_ARR_14
	.DWORD BATTLE_BACKGROUND_ARR_15
	.DWORD BATTLE_BACKGROUND_ARR_16
	.DWORD BATTLE_BACKGROUND_ARR_17
	.DWORD BATTLE_BACKGROUND_ARR_18
	.DWORD BATTLE_BACKGROUND_ARR_19
	.DWORD BATTLE_BACKGROUND_ARR_20
	.DWORD BATTLE_BACKGROUND_ARR_21
	.DWORD BATTLE_BACKGROUND_ARR_22
	.DWORD BATTLE_BACKGROUND_ARR_23
	.DWORD BATTLE_BACKGROUND_ARR_24
	.DWORD BATTLE_BACKGROUND_ARR_25
	.DWORD BATTLE_BACKGROUND_ARR_26
	.DWORD BATTLE_BACKGROUND_ARR_27
	.DWORD BATTLE_BACKGROUND_ARR_28
	.DWORD BATTLE_BACKGROUND_ARR_29
	.DWORD BATTLE_BACKGROUND_ARR_30
	.DWORD BATTLE_BACKGROUND_ARR_31
	.DWORD BATTLE_BACKGROUND_ARR_32
	.DWORD BATTLE_BACKGROUND_ARR_33
	.DWORD BATTLE_BACKGROUND_ARR_34
	.DWORD BATTLE_BACKGROUND_ARR_35
	.DWORD BATTLE_BACKGROUND_ARR_36
	.DWORD BATTLE_BACKGROUND_ARR_37
	.DWORD BATTLE_BACKGROUND_ARR_38
	.DWORD BATTLE_BACKGROUND_ARR_39
	.DWORD BATTLE_BACKGROUND_ARR_40
	.DWORD BATTLE_BACKGROUND_ARR_41
	.DWORD BATTLE_BACKGROUND_ARR_42
	.DWORD BATTLE_BACKGROUND_ARR_43
	.DWORD BATTLE_BACKGROUND_ARR_44
	.DWORD BATTLE_BACKGROUND_ARR_45
	.DWORD BATTLE_BACKGROUND_ARR_46
	.DWORD BATTLE_BACKGROUND_ARR_47
	.DWORD BATTLE_BACKGROUND_ARR_48
	.DWORD BATTLE_BACKGROUND_ARR_49
	.DWORD BATTLE_BACKGROUND_ARR_50
	.DWORD BATTLE_BACKGROUND_ARR_51
	.DWORD BATTLE_BACKGROUND_ARR_52
	.DWORD BATTLE_BACKGROUND_ARR_53
	.DWORD BATTLE_BACKGROUND_ARR_54
	.DWORD BATTLE_BACKGROUND_ARR_55
	.DWORD BATTLE_BACKGROUND_ARR_56
	.DWORD BATTLE_BACKGROUND_ARR_57
	.DWORD BATTLE_BACKGROUND_ARR_58
	.DWORD BATTLE_BACKGROUND_ARR_59
	.DWORD BATTLE_BACKGROUND_ARR_60
	.DWORD BATTLE_BACKGROUND_ARR_61
	.DWORD BATTLE_BACKGROUND_ARR_62
	.DWORD BATTLE_BACKGROUND_ARR_63
	.DWORD BATTLE_BACKGROUND_ARR_64
	.DWORD BATTLE_BACKGROUND_ARR_65
	.DWORD BATTLE_BACKGROUND_ARR_66
	.DWORD BATTLE_BACKGROUND_ARR_67
	.DWORD BATTLE_BACKGROUND_ARR_68
	.DWORD BATTLE_BACKGROUND_ARR_69
	.DWORD BATTLE_BACKGROUND_ARR_70
	.DWORD BATTLE_BACKGROUND_ARR_71
	.DWORD BATTLE_BACKGROUND_ARR_72
	.DWORD BATTLE_BACKGROUND_ARR_73
	.DWORD BATTLE_BACKGROUND_ARR_74
	.DWORD BATTLE_BACKGROUND_ARR_75
	.DWORD BATTLE_BACKGROUND_ARR_76
	.DWORD BATTLE_BACKGROUND_ARR_77
	.DWORD BATTLE_BACKGROUND_ARR_78
	.DWORD BATTLE_BACKGROUND_ARR_79
	.DWORD BATTLE_BACKGROUND_ARR_80
	.DWORD BATTLE_BACKGROUND_ARR_81
	.DWORD BATTLE_BACKGROUND_ARR_82
	.DWORD BATTLE_BACKGROUND_ARR_83
	.DWORD BATTLE_BACKGROUND_ARR_84
	.DWORD BATTLE_BACKGROUND_ARR_85
	.DWORD BATTLE_BACKGROUND_ARR_86
	.DWORD BATTLE_BACKGROUND_ARR_87
	.DWORD BATTLE_BACKGROUND_ARR_88
	.DWORD BATTLE_BACKGROUND_ARR_89
	.DWORD BATTLE_BACKGROUND_ARR_90
	.DWORD BATTLE_BACKGROUND_ARR_91
	.DWORD BATTLE_BACKGROUND_ARR_92
	.DWORD BATTLE_BACKGROUND_ARR_93
	.DWORD BATTLE_BACKGROUND_ARR_94
	.DWORD BATTLE_BACKGROUND_ARR_95
	.DWORD BATTLE_BACKGROUND_ARR_96
	.DWORD BATTLE_BACKGROUND_ARR_97
	.DWORD BATTLE_BACKGROUND_ARR_98
	.DWORD BATTLE_BACKGROUND_ARR_99
	.DWORD BATTLE_BACKGROUND_ARR_100
	.DWORD BATTLE_BACKGROUND_ARR_101
	.DWORD BATTLE_BACKGROUND_ARR_102

BATTLEBG_PALETTE_POINTERS: ;$CADAD9
	.INCBIN "bin/unknowns/CADAD9.bin"

BG_DATA_TABLE: ;$CADCA1
	.INCBIN "bin/unknowns/CADCA1.bin"

BG_SCROLLING_TABLE: ;$CAF258
	.INCBIN "bin/unknowns/CAF258.bin"

BG_DISTORTION_TABLE: ;$CAF708
	.INCBIN "bin/unknowns/CAF708.bin"
