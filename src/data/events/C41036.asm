
UNKNOWN_C41036: ;$C41036
	EVENT_SET_X $FFF8
	EVENT_SET_Y $0028
	EVENT_SET_X_VELOCITY $0100
	EVENT_SET_Y_VELOCITY $0000
@UNKNOWN0:
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $01
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $00
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AAD5 $01, .LOWORD(@UNKNOWN0)
	EVENT_SET_X_VELOCITY $0000
	EVENT_SET_Y_VELOCITY $0000
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN_RIGHT, $00
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_PAUSE $08
@UNKNOWN1: ;$C4106F
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AAD5 $08, .LOWORD(@UNKNOWN1)
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $B4
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN_RIGHT, $01
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN_LEFT, $01
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN_RIGHT, $01
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $3C
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $3C
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $3C
@UNKNOWN2: ;$C410CA
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AAD5 $02, .LOWORD(@UNKNOWN2)
@UNKNOWN3: ;$C410E1
	EVENT_WRITE_WORD_WRAM .LOWORD(UNKNOWN_7EB4B4), $0001
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $14
	EVENT_WRITE_WORD_WRAM .LOWORD(UNKNOWN_7EB4B4), $0000
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $1E
	EVENT_UNKNOWN_C0AAD5 $01, .LOWORD(@UNKNOWN3)
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN_RIGHT, $01
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $01
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP_RIGHT, $01
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $01
	EVENT_PAUSE $08
@UNKNOWN4: ;$C4111E
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $00
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AAD5 $08, .LOWORD(@UNKNOWN4)
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $00
	EVENT_PAUSE $5A
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP_RIGHT, $01
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $01
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN_RIGHT, $01
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_PAUSE $1E
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $3C
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
