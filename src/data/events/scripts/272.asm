
EVENT_272: ;$C30AF8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_LOOP $0E
		EVENT_SET_X_RELATIVE $0002
		EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
		EVENT_SET_X_RELATIVE $FFFE
		EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
		EVENT_SET_Y_RELATIVE $FFFE
		EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
		EVENT_SET_Y_RELATIVE $0002
		EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_UNKNOWN_C46E46
	EVENT_PAUSE 1*FRAME
	EVENT_LOOP $0A
		EVENT_SET_X_RELATIVE $0002
		EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
		EVENT_SET_X_RELATIVE $FFFE
		EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
		EVENT_SET_X_RELATIVE $FFFE
		EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
		EVENT_SET_X_RELATIVE $0002
		EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
		EVENT_SET_Y_RELATIVE $FFFE
		EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
		EVENT_SET_Y_RELATIVE $0002
		EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
		EVENT_SET_Y_RELATIVE $0002
		EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
		EVENT_SET_Y_RELATIVE $FFFE
		EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_UNKNOWN_C46E46
	EVENT_SET_Y_VELOCITY $FE00
	EVENT_PAUSE $50*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_HALT