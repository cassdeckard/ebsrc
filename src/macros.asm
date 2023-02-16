.INCLUDE "textmacros.asm"

.MACRO BINARY file
    .INCBIN .SPRINTF("bin/%s/%s", LOCALE, file)
.ENDMACRO

.MACRO AUDIOPACK file
    BINARY file ; AUDIOPACK
.ENDMACRO

.MACRO RESERVE_STACK_SPACE size
    PHD                    ; RESERVE_STACK_SPACE begin
    PHA
    TDC
    ADC #$FFFF - size + 1   
    TCD
    PLA                    ; RESERVE_STACK_SPACE end
.ENDMACRO

.MACRO RESERVE_STACK_SPACE_CLOBBER size
    PHD                    ; RESERVE_STACK_SPACE_CLOBBER begin
    TDC
    ADC #$FFFF - size + 1
    TCD                    ; RESERVE_STACK_SPACE_CLOBBER end
.ENDMACRO

.macro PTR3 addr
    .WORD .LOWORD(addr)
    .BYTE .LOBYTE(.HIWORD(addr))
.endmacro

.macro BYTE3 addr
	.WORD .LOWORD(addr)
	.BYTE .LOBYTE(.HIWORD(addr))
.endmacro

.macro PACKPTR addr
.IF .DEFINED(JPN)
    .BYTE .LOBYTE(.HIWORD(addr)) - $E2
.ELSE
	.BYTE .LOBYTE(.HIWORD(addr))
.ENDIF
	.WORD .LOWORD(addr)
.endmacro

.macro DISPLAY_TEXT_PTR addr
	LOADPTR addr, $0E   ; DISPLAY_TEXT_PTR begin
	JSL DISPLAY_TEXT    ; DISPLAY_TEXT_PTR end
.endmacro

.macro DISPLAY_BATTLE_TEXT_PTR addr
    LOADPTR addr, $0E          ; DISPLAY_IN_BATTLE_TEXT_PTR begin
    JSL DISPLAY_IN_BATTLE_TEXT ; DISPLAY_IN_BATTLE_TEXT_PTR end
.endmacro

.macro LOADPTR ptr, var
    LOADINT32 ptr, var   ; LOADPTR .
.endmacro

.macro LOADINT32 val, var
    LDA #.LOWORD(val)    ; LOADINT32 begin
    STA var              ; LOADINT32
    LDA #.HIWORD(val)    ; LOADINT32
    STA var+2            ; LOADINT32 end
.endmacro

.macro LOADPTRPTR ptr, var
    LDA .LOWORD(ptr)
    STA var
    LDA .LOWORD(ptr)+2
    STA var+2
.endmacro

.ENUM CHAR
    .IF .DEFINED(JPN)
        SPACE = $20  ; CHAR(JPN)
        ZERO = $30   ; CHAR(JPN)
    .ELSE
        SPACE = $50  ; CHAR(US)
        ZERO = $60   ; CHAR(US)
    .ENDIF
.ENDENUM

.macro EBTEXT str
    .repeat .strlen(str), i
        .if .strat(str, i) = ' '
            .BYTE CHAR::SPACE   ; EBTEXT:SPACE
        .elseif .strat(str, i) = '!'
            .BYTE $51   ; EBTEXT:!
        .elseif .strat(str, i) = '&'
            .BYTE $52   ; EBTEXT:&
        .elseif .strat(str, i) = '{'
            .BYTE $53   ; EBTEXT:{
        .elseif .strat(str, i) = '$'
            .BYTE $54   ; EBTEXT:$
        .elseif .strat(str, i) = '%'
            .BYTE $55   ; EBTEXT:%
        .elseif .strat(str, i) = '}'
            .BYTE $56   ; EBTEXT:}
        .elseif .strat(str, i) = $27
            .BYTE $57   ; EBTEXT:$27
        .elseif .strat(str, i) = '('
            .BYTE $58   ; EBTEXT:(
        .elseif .strat(str, i) = ')'
            .BYTE $59   ; EBTEXT:)
        .elseif .strat(str, i) = '*'
            .BYTE $5A   ; EBTEXT:*
        .elseif .strat(str, i) = '+'
            .BYTE $5B   ; EBTEXT:+
        .elseif .strat(str, i) = ','
            .BYTE $5C   ; EBTEXT:,
        .elseif .strat(str, i) = '-'
            .BYTE $5D   ; EBTEXT:-
        .elseif .strat(str, i) = '.'
            .BYTE $5E   ; EBTEXT:.
        .elseif .strat(str, i) = '/'
            .BYTE $5F   ; EBTEXT:/
        .elseif .strat(str, i) = '0'
            .BYTE CHAR::ZERO   ; EBTEXT:ZERO
        .elseif .strat(str, i) = '1'
            .BYTE $61   ; EBTEXT:1
        .elseif .strat(str, i) = '2'
            .BYTE $62   ; EBTEXT:2
        .elseif .strat(str, i) = '3'
            .BYTE $63   ; EBTEXT:3
        .elseif .strat(str, i) = '4'
            .BYTE $64   ; EBTEXT:4
        .elseif .strat(str, i) = '5'
            .BYTE $65   ; EBTEXT:5
        .elseif .strat(str, i) = '6'
            .BYTE $66   ; EBTEXT:6
        .elseif .strat(str, i) = '7'
            .BYTE $67   ; EBTEXT:7
        .elseif .strat(str, i) = '8'
            .BYTE $68   ; EBTEXT:8
        .elseif .strat(str, i) = '9'
            .BYTE $69   ; EBTEXT:9
        .elseif .strat(str, i) = ':'
            .BYTE $6A   ; EBTEXT::
        .elseif .strat(str, i) = ';'
            .BYTE $6B   ; EBTEXT:;
        .elseif .strat(str, i) = '<'
            .BYTE $6C   ; EBTEXT:<
        .elseif .strat(str, i) = '='
            .BYTE $6D   ; EBTEXT:=
        .elseif .strat(str, i) = '>'
            .BYTE $6E   ; EBTEXT:>
        .elseif .strat(str, i) = '?'
            .BYTE $6F   ; EBTEXT:?
        .elseif .strat(str, i) = '@'
            .BYTE $70   ; EBTEXT:@
        .elseif .strat(str, i) = 'A'
            .BYTE $71   ; EBTEXT:A
        .elseif .strat(str, i) = 'B'
            .BYTE $72   ; EBTEXT:B
        .elseif .strat(str, i) = 'C'
            .BYTE $73   ; EBTEXT:C
        .elseif .strat(str, i) = 'D'
            .BYTE $74   ; EBTEXT:D
        .elseif .strat(str, i) = 'E'
            .BYTE $75   ; EBTEXT:E
        .elseif .strat(str, i) = 'F'
            .BYTE $76   ; EBTEXT:F
        .elseif .strat(str, i) = 'G'
            .BYTE $77   ; EBTEXT:G
        .elseif .strat(str, i) = 'H'
            .BYTE $78   ; EBTEXT:H
        .elseif .strat(str, i) = 'I'
            .BYTE $79   ; EBTEXT:I
        .elseif .strat(str, i) = 'J'
            .BYTE $7A   ; EBTEXT:J
        .elseif .strat(str, i) = 'K'
            .BYTE $7B   ; EBTEXT:K
        .elseif .strat(str, i) = 'L'
            .BYTE $7C   ; EBTEXT:L
        .elseif .strat(str, i) = 'M'
            .BYTE $7D   ; EBTEXT:M
        .elseif .strat(str, i) = 'N'
            .BYTE $7E   ; EBTEXT:N
        .elseif .strat(str, i) = 'O'
            .BYTE $7F   ; EBTEXT:O
        .elseif .strat(str, i) = 'P'
            .BYTE $80   ; EBTEXT:P
        .elseif .strat(str, i) = 'Q'
            .BYTE $81   ; EBTEXT:Q
        .elseif .strat(str, i) = 'R'
            .BYTE $82   ; EBTEXT:R
        .elseif .strat(str, i) = 'S'
            .BYTE $83   ; EBTEXT:S
        .elseif .strat(str, i) = 'T'
            .BYTE $84   ; EBTEXT:T
        .elseif .strat(str, i) = 'U'
            .BYTE $85   ; EBTEXT:U
        .elseif .strat(str, i) = 'V'
            .BYTE $86   ; EBTEXT:V
        .elseif .strat(str, i) = 'W'
            .BYTE $87   ; EBTEXT:W
        .elseif .strat(str, i) = 'X'
            .BYTE $88   ; EBTEXT:X
        .elseif .strat(str, i) = 'Y'
            .BYTE $89   ; EBTEXT:Y
        .elseif .strat(str, i) = 'Z'
            .BYTE $8A   ; EBTEXT:Z
        .elseif .strat(str, i) = '~'
            .BYTE $8B   ; EBTEXT:~
        .elseif .strat(str, i) = '^'
            .BYTE $8C   ; EBTEXT:^
        .elseif .strat(str, i) = '['
            .BYTE $8D   ; EBTEXT:[
        .elseif .strat(str, i) = ']'
            .BYTE $8E   ; EBTEXT:]
        .elseif .strat(str, i) = '#'
            .BYTE $8F   ; EBTEXT:#
        .elseif .strat(str, i) = '_'
            .BYTE $90   ; EBTEXT:_
        .elseif .strat(str, i) = 'a'
            .BYTE $91   ; EBTEXT:a
        .elseif .strat(str, i) = 'b'
            .BYTE $92   ; EBTEXT:b
        .elseif .strat(str, i) = 'c'
            .BYTE $93   ; EBTEXT:c
        .elseif .strat(str, i) = 'd'
            .BYTE $94   ; EBTEXT:d
        .elseif .strat(str, i) = 'e'
            .BYTE $95   ; EBTEXT:e
        .elseif .strat(str, i) = 'f'
            .BYTE $96   ; EBTEXT:f
        .elseif .strat(str, i) = 'g'
            .BYTE $97   ; EBTEXT:g
        .elseif .strat(str, i) = 'h'
            .BYTE $98   ; EBTEXT:h
        .elseif .strat(str, i) = 'i'
            .BYTE $99   ; EBTEXT:i
        .elseif .strat(str, i) = 'j'
            .BYTE $9A   ; EBTEXT:j
        .elseif .strat(str, i) = 'k'
            .BYTE $9B   ; EBTEXT:k
        .elseif .strat(str, i) = 'l'
            .BYTE $9C   ; EBTEXT:l
        .elseif .strat(str, i) = 'm'
            .BYTE $9D   ; EBTEXT:m
        .elseif .strat(str, i) = 'n'
            .BYTE $9E   ; EBTEXT:n
        .elseif .strat(str, i) = 'o'
            .BYTE $9F   ; EBTEXT:o
        .elseif .strat(str, i) = 'p'
            .BYTE $A0   ; EBTEXT:p
        .elseif .strat(str, i) = 'q'
            .BYTE $A1   ; EBTEXT:q
        .elseif .strat(str, i) = 'r'
            .BYTE $A2   ; EBTEXT:r
        .elseif .strat(str, i) = 's'
            .BYTE $A3   ; EBTEXT:s
        .elseif .strat(str, i) = 't'
            .BYTE $A4   ; EBTEXT:t
        .elseif .strat(str, i) = 'u'
            .BYTE $A5   ; EBTEXT:u
        .elseif .strat(str, i) = 'v'
            .BYTE $A6   ; EBTEXT:v
        .elseif .strat(str, i) = 'w'
            .BYTE $A7   ; EBTEXT:w
        .elseif .strat(str, i) = 'x'
            .BYTE $A8   ; EBTEXT:x
        .elseif .strat(str, i) = 'y'
            .BYTE $A9   ; EBTEXT:y
        .elseif .strat(str, i) = 'z'
            .BYTE $AA   ; EBTEXT:z
        .elseif .strat(str, i) = '|'
            .BYTE $AC   ; EBTEXT:BAR
        .else
            .warning .sprintf("Unknown character %c", .strat(str, i))    ; EBTEXT:WARNING_UNKNOWN
        .endif
    .endrepeat
.endmacro

.MACRO PADDEDEBTEXT str, len
    EBTEXT str
    .REPEAT len-.STRLEN(str)
        .BYTE $00
    .ENDREPEAT
.ENDMACRO

.MACRO EBTEXTZ str
    EBTEXT str
    .BYTE $00
.ENDMACRO

.MACRO PADDEDASCII str, len
    .BYTE str
    .REPEAT len-.STRLEN(str)
        .BYTE $00
    .ENDREPEAT
.ENDMACRO

.MACRO ASCIIZ str
    .BYTE str
    .BYTE $00
.ENDMACRO

.MACRO RGB red, green, blue
    .assert red < 32, error, "Red out of range"
    .assert green < 32, error, "Green out of range"
    .assert blue < 32, error, "Blue out of range"
    .WORD (blue<<10) | (green<<5) | red
.ENDMACRO

.MACRO OPTIMIZED_MULT scratch, amount
    .IF amount = 1
    .ELSEIF amount = 2
        ASL
    .ELSEIF amount = 3
        STA scratch
        ASL
        ADC scratch
    .ELSEIF amount = 4
        ASL
        ASL
    .ELSEIF amount = 5
        STA scratch
        ASL
        ASL
        ADC scratch
    .ELSEIF amount = 6
        STA scratch
        ASL
        ADC scratch
        ASL
    .ELSEIF amount = 7
        STA scratch
        ASL
        ADC scratch
        ASL
        ADC scratch
    .ELSEIF amount = 8
        ASL
        ASL
        ASL
    .ELSEIF amount = 9
        STA scratch
        ASL
        ASL
        ASL
        ADC scratch
    .ELSEIF amount = 10
        STA scratch
        ASL
        ASL
        ADC scratch
        ASL
    .ELSEIF amount = 11
        STA scratch
        ASL
        ASL
        ADC scratch
        ASL
        ADC scratch
    .ELSEIF amount = 12
        STA scratch
        ASL
        ADC scratch
        ASL
        ASL
    .ELSEIF amount = 14
        STA scratch
        ASL
        ADC scratch
        ASL
        ADC scratch
        ASL
    .ELSEIF amount = 15
        STA scratch
        ASL
        ADC scratch
        ASL
        ADC scratch
        ASL
        ADC scratch
    .ELSEIF amount = 16
        ASL
        ASL
        ASL
        ASL
    .ELSEIF amount = 17
        STA scratch
        ASL
        ASL
        ASL
        ASL
        ADC scratch
    .ELSEIF amount = 18
        STA scratch
        ASL
        ASL
        ASL
        ADC scratch
        ASL
    .ELSEIF amount = 19
        STA scratch
        ASL
        ASL
        ASL
        ADC scratch
        ASL
        ADC scratch
    .ELSEIF amount = 20
        STA scratch
        ASL
        ASL
        ADC scratch
        ASL
        ASL
    .ELSEIF amount = 24
        STA scratch
        ASL
        ADC scratch
        ASL
        ASL
        ASL
    .ELSEIF amount = 25
        STA scratch
        ASL
        ADC scratch
        ASL
        ASL
        ASL
        ADC scratch
    .ELSEIF amount = 27
        STA scratch
        ASL
        ADC scratch
        ASL
        ASL
        ADC scratch
        ASL
        ADC scratch
    .ELSEIF amount = 30
        STA scratch
        ASL
        ADC scratch
        ASL
        ADC scratch
        ASL
        ADC scratch
        ASL
    .ELSEIF amount = 32
        ASL
        ASL
        ASL
        ASL
        ASL
    .ELSEIF amount = 40
        STA scratch
        ASL
        ASL
        ADC scratch
        ASL
        ASL
        ASL
    .ELSEIF amount = 42
        STA scratch
        ASL
        ASL
        ADC scratch
        ASL
        ASL
        ADC scratch
        ASL
    .ELSEIF amount = 44
        STA scratch
        ASL
        ASL
        ADC scratch
        ASL
        ADC scratch
        ASL
        ASL
    .ELSEIF amount = 48
        STA scratch
        ASL
        ADC scratch
        ASL
        ASL
        ASL
        ASL
    .ELSEIF amount = 64
        ASL
        ASL
        ASL
        ASL
        ASL
        ASL
    .ELSEIF amount = 80
        STA scratch
        ASL
        ASL
        ADC scratch
        ASL
        ASL
        ASL
        ASL
    .ELSEIF amount = 96
        STA scratch
        ASL
        ADC scratch
        ASL
        ASL
        ASL
        ASL
        ASL
    .ELSE
        LDY #amount
        JSL MULT168
    .ENDIF
.ENDMACRO

.MACRO CREATE_WINDOW_NEAR arg
    LDA arg
    JSR a:.LOWORD(CREATE_WINDOW)
.ENDMACRO

.MACRO CREATE_WINDOW_FAR arg
    LDA arg
    JSL REDIRECT_CREATE_WINDOW
.ENDMACRO

.MACRO CMP32 src, dest
    LDA src + 2
    CMP dest + 2
    BNE :+
    LDA src
    CMP dest
    :
.ENDMACRO

.MACRO BLTEQ dest
    BCC dest
    BEQ dest
.ENDMACRO

.MACRO BGT dest
    BEQ :+
    BCS dest
    :
.ENDMACRO

.MACRO BEQL dest
    BNE :+
    JMP dest
    :
.ENDMACRO

.MACRO BNEL dest
    BEQ :+
    JMP dest
    :
.ENDMACRO

.MACRO BCCL dest
    BCS :+
    BEQ :+
    JMP dest
    :
.ENDMACRO

.MACRO BGTL dest
    BEQ :+
    BCC :+
    JMP dest
    :
.ENDMACRO

.MACRO BRANCHGTS dest
    BVS :+
    BPL dest
    BRA :++
    :
    BMI dest
    :
.ENDMACRO

.MACRO BRANCHLTEQS dest
    BVC :+
    BPL dest
    BRA :++
    :
    BMI dest
    :
.ENDMACRO

.MACRO JUMPGTS dest
    BVS :+
    BMI :++
    JMP dest
    :
    BPL :+
    JMP dest
    :
.ENDMACRO

.MACRO JUMPLTEQS dest
    BVC :+
    BMI :++
    JMP dest
    :
    BPL :+
    JMP dest
    :
.ENDMACRO

.MACRO MOVE_INT src, dest
    LDA src
    STA dest
    LDA src+2
    STA dest+2
.ENDMACRO

.MACRO MOVE_INT816 src, dest
    LDA src
    STORE_INT816 dest
.ENDMACRO

.MACRO STORE_INT816 dest
    STA dest
    STZ dest+1
.ENDMACRO

.MACRO MOVE_INT832 src, dest
    LDA src
    STORE_INT832 dest
.ENDMACRO

.MACRO STORE_INT832 dest
    STA dest
    STZ dest+1
    STZ dest+2
    STZ dest+3
.ENDMACRO

.MACRO MOVE_INT1632 src, dest
    LDA src
    STORE_INT1632 dest
.ENDMACRO

.MACRO STORE_INT1632 dest
    STA dest
    STZ dest+2
.ENDMACRO

.MACRO MOVE_INT1632S src, dest
    MOVE_INT1632 src, dest
    BPL :+
    DEC dest+2
    :
.ENDMACRO

.MACRO STORE_INT1632S dest
    STORE_INT1632 dest
    BPL :+
    DEC dest+2
    :
.ENDMACRO

.MACRO SIGN_EXTENDA1632 dest
    CMP #$0000
    STA dest
    STZ dest+2
    BPL :+
    DEC dest+2
    :
.ENDMACRO

.MACRO MOVE_INT64 src, dest
    MOVE_INT src, dest
    MOVE_INT src + 4, dest + 4
.ENDMACRO

.MACRO PROMOTENEARPTR src, dest
    LDA #src
    PROMOTENEARPTRA dest
.ENDMACRO

.MACRO PROMOTENEARPTRA dest
    STA dest
    PHB
    SEP #PROC_FLAGS::ACCUM8
    PLA
    STORE_INT816 dest+2
.ENDMACRO


.MACRO PUSH32 val
    LDA val + 2
    PHA
    LDA val
    PHA
.ENDMACRO

.MACRO PULL32 val
    PLA
    STA val
    PLA
    STA val + 2
.ENDMACRO

.MACRO ASR8_INT addr
    LDA addr+1
    STA addr
    SEP #PROC_FLAGS::ACCUM8
    MOVE_INT816 addr + 3, addr + 2
    BPL :+
    DEC addr + 3
    :
    REP #PROC_FLAGS::ACCUM8
.ENDMACRO

.MACRO ADD_INT val1, val2, dest
    LDA val1
    ADC val2
    STA dest
    LDA val1+2
    ADC val2+2
    STA dest+2
.ENDMACRO

.MACRO ADD_INT_ASSIGN val1, val2
    ADD_INT val1, val2, val1
.ENDMACRO

.MACRO OR_INT val1, val2, dest
    LDA val1
    ORA val2
    STA dest
    LDA val1 + 2
    ORA val2 + 2
    STA dest + 2
.ENDMACRO

.MACRO OR_INT_ASSIGN val1, val2
    OR_INT val1, val2, val1
.ENDMACRO

.MACRO AND_INT val1, val2, dest
    LDA val1
    AND val2
    STA dest
    LDA val1+2
    AND val2+2
    STA dest+2
.ENDMACRO

.MACRO AND_INT_ASSIGN val1, val2
    AND_INT val1, val2, val1
.ENDMACRO

.MACRO CONST_ADD_VAR_INT constant, var, dest
    LDA #.LOWORD(constant)
    ADC var
    STA dest
    LDA #.HIWORD(constant)
    ADC var+2
    STA dest+2
.ENDMACRO

.MACRO CONST_ADD_VAR_INT_ASSIGN constant, var
    CONST_ADD_VAR_INT constant, var, var
.ENDMACRO

.MACRO VAR_ADD_CONST_INT constant, var, dest
    LDA var
    ADC #.LOWORD(constant)
    STA dest
    LDA var+2
    ADC #.HIWORD(constant)
    STA dest+2
.ENDMACRO

.MACRO VAR_ADD_CONST_INT_ASSIGN constant, var
    VAR_ADD_CONST_INT constant, var, var
.ENDMACRO

.MACRO SUB_INT val1, val2, dest
    LDA val1
    SBC val2
    STA dest
    LDA val1+2
    SBC val2+2
    STA dest+2
.ENDMACRO

.MACRO SUB_INT_ASSIGN val1, val2
    SUB_INT val1, val2, val1
.ENDMACRO

.MACRO CONST_SUB_VAR_INT constant, var, dest
    LDA #.LOWORD(constant)
    SBC var
    STA dest
    LDA #.HIWORD(constant)
    SBC var+2
    STA dest+2
.ENDMACRO

.MACRO CONST_SUB_VAR_INT_ASSIGN constant, var
    CONST_SUB_VAR_INT constant, var, var
.ENDMACRO

.MACRO NEGATE_INT_ASSIGN var
    CONST_SUB_VAR_INT_ASSIGN 0, var
.ENDMACRO

.MACRO MOVE_INTX src, dest
    LDX src
    STX dest
    LDX src+2
    STX dest+2
.ENDMACRO

.MACRO MOVE_INTY src, dest
    LDY src
    STY dest
    LDY src+2
    STY dest+2
.ENDMACRO

.MACRO MOVE_INT64X src, dest
    MOVE_INTX src, dest
    MOVE_INTX src + 4, dest + 4
.ENDMACRO

.MACRO MOVE_INT64Y src, dest
    MOVE_INTY src, dest
    MOVE_INTY src + 4, dest + 4
.ENDMACRO

.MACRO MOVE_INT_CONSTANT constant, dest
    LDA #.LOWORD(constant)
    STA dest
    LDA #.HIWORD(constant)
    STA dest+2
.ENDMACRO

.MACRO MOVE_INT_XPTRDEST src, dest
    LDA src
    STA dest, X
    LDA src+2
    STA dest+2, X
.ENDMACRO

.MACRO MOVE_INT_YPTRDEST src, dest
    LDA src
    STA dest, Y
    LDA src+2
    STA dest+2, Y
.ENDMACRO

.MACRO MOVE_INT64_XPTRDEST src, dest
    MOVE_INT_XPTRDEST src, dest
    MOVE_INT_XPTRDEST src + 4, dest + 4
.ENDMACRO

.MACRO MOVE_INT64_YPTRDEST src, dest
    MOVE_INT_YPTRDEST src, dest
    MOVE_INT_YPTRDEST src + 4, dest + 4
.ENDMACRO

.MACRO MOVE_INT_CONSTANT_XPTRDEST constant, dest
    LDA #.LOWORD(constant)
    STA dest, Y
    LDA #.HIWORD(constant)
    STA dest+2, Y
.ENDMACRO

.MACRO MOVE_INT_CONSTANT_YPTRDEST constant, dest
    LDA #.LOWORD(constant)
    STA dest, Y
    LDA #.HIWORD(constant)
    STA dest+2, Y
.ENDMACRO

.MACRO MOVE_INT_XPTRSRC src, dest
    LDA src, X
    STA dest
    LDA src+2, X
    STA dest+2
.ENDMACRO

.MACRO MOVE_INT_YPTRSRC src, dest
    LDA src, Y
    STA dest
    LDA src+2, Y
    STA dest+2
.ENDMACRO

.MACRO MOVE_INT_XPTRSRC_YPTRDEST src, dest
    LDA src, X
    STA dest, Y
    LDA src+2, X
    STA dest+2, Y
.ENDMACRO

.MACRO MOVE_INT_YPTRSRC_XPTRDEST src, dest
    LDA src, Y
    STA dest, X
    LDA src+2, Y
    STA dest+2, X
.ENDMACRO

.MACRO DEREFERENCE_PTR_TO ptr, dest
    LDY #$0002    ; DEREFERENCE_PTR_BEGIN
    LDA [ptr],Y
    TAY
    LDA [ptr]
    STA dest
    STY dest+2    ; DEREFERENCE_PTR_END
.ENDMACRO

.MACRO COPY_TO_VRAM1 src, dest, size, unk
    LOADPTR src, $0E
    COPY_TO_VRAM1COMMON dest, size, unk
.ENDMACRO

.MACRO COPY_TO_VRAM1P src, dest, size, unk
    MOVE_INT src, $0E
    COPY_TO_VRAM1COMMON dest, size, unk
.ENDMACRO

.MACRO COPY_TO_VRAM1COMMON dest, size, unk
    LDY #dest
    .IF size = dest
        TYX
    .ELSE
        LDX #size
    .ENDIF
    SEP #PROC_FLAGS::ACCUM8
    .IF unk = dest
        TYA
    .ELSE
        LDA #unk
    .ENDIF
    JSL PREPARE_VRAM_COPY
.ENDMACRO

.MACRO COPY_TO_VRAM1OFFSET src, dest, size, offset, unk
    MOVE_INT src, $0E
    LDA dest
    CLC
    ADC #offset
    TAY
    LDX #size
    SEP #PROC_FLAGS::ACCUM8
    LDA #unk
    JSL PREPARE_VRAM_COPY
.ENDMACRO

.MACRO COPY_TO_VRAM2 src, dest, size, unk
    LDA #.HIWORD(src)
    STA $0E
    LDA #dest
    STA $10
    LDY #.LOWORD(src)
    LDX #size
    SEP #PROC_FLAGS::ACCUM8
    .IF <dest = unk
    .ELSE
        LDA #unk
    .ENDIF
    JSL PREPARE_VRAM_COPY_ENTRY_B
.ENDMACRO

.MACRO COPY_TO_VRAM3COMMON dest, size, unk
    LDY #dest
    .IF size = dest
        TYX
    .ELSE
        LDX #size
    .ENDIF
    SEP #PROC_FLAGS::ACCUM8
    .IF unk = dest
        TYA
    .ELSE
        LDA #unk
    .ENDIF
    JSL TRANSFER_TO_VRAM
.ENDMACRO

.MACRO COPY_TO_VRAM3 src, dest, size, unk
    LOADPTR src, $0E
    COPY_TO_VRAM3COMMON dest, size, unk
.ENDMACRO

.MACRO COPY_TO_VRAM3P src, dest, size, unk
    MOVE_INT src, $0E
    COPY_TO_VRAM3COMMON dest, size, unk
.ENDMACRO

.MACRO SPRITES group, spr1, spr2, spr3, spr4, spr5, spr6, spr7, spr8
    .BANKBYTES group
    SPRITES2 group, spr1, spr2, spr3, spr4, spr5, spr6, spr7, spr8
.ENDMACRO

.MACRO SPRITES2 group, spr1, spr2, spr3, spr4, spr5, spr6, spr7, spr8
    .IFNBLANK spr1
        .ASSERT .HIWORD(spr1) = .HIWORD(group), error, "sprite 1 not in same bank!"
        .ASSERT .LOWORD(spr1) >= .LOWORD(group), error, "sprite 1 offset before sprite group offset!"
        .WORD .LOWORD(spr1)
    .ENDIF
    .IFNBLANK spr2
        .ASSERT .HIWORD(spr2) = .HIWORD(group), error, "sprite 2 not in same bank!"
        .ASSERT .LOWORD(spr2) >= .LOWORD(group), error, "sprite 2 offset before sprite group offset!"
        .WORD .LOWORD(spr2)
    .ENDIF
    .IFNBLANK spr3
        .ASSERT .HIWORD(spr3) = .HIWORD(group), error, "sprite 3 not in same bank!"
        .ASSERT .LOWORD(spr3) >= .LOWORD(group), error, "sprite 3 offset before sprite group offset!"
        .WORD .LOWORD(spr3)
    .ENDIF
    .IFNBLANK spr4
        .ASSERT .HIWORD(spr4) = .HIWORD(group), error, "sprite 4 not in same bank!"
        .ASSERT .LOWORD(spr4) >= .LOWORD(group), error, "sprite 4 offset before sprite group offset!"
        .WORD .LOWORD(spr4)
    .ENDIF
    .IFNBLANK spr5
        .ASSERT .HIWORD(spr5) = .HIWORD(group), error, "sprite 5 not in same bank!"
        .ASSERT .LOWORD(spr5) >= .LOWORD(group), error, "sprite 5 offset before sprite group offset!"
        .WORD .LOWORD(spr5)
    .ENDIF
    .IFNBLANK spr6
        .ASSERT .HIWORD(spr6) = .HIWORD(group), error, "sprite 6 not in same bank!"
        .ASSERT .LOWORD(spr6) >= .LOWORD(group), error, "sprite 6 offset before sprite group offset!"
        .WORD .LOWORD(spr6)
    .ENDIF
    .IFNBLANK spr7
        .ASSERT .HIWORD(spr7) = .HIWORD(group), error, "sprite 7 not in same bank!"
        .ASSERT .LOWORD(spr7) >= .LOWORD(group), error, "sprite 7 offset before sprite group offset!"
        .WORD .LOWORD(spr7)
    .ENDIF
    .IFNBLANK spr8
        .ASSERT .HIWORD(spr8) = .HIWORD(group), error, "sprite 8 not in same bank!"
        .ASSERT .LOWORD(spr8) >= .LOWORD(group), error, "sprite 8 offset before sprite group offset!"
        .WORD .LOWORD(spr8)
    .ENDIF
.ENDMACRO

.MACRO STZ_BADOPT dest
    .IF .DEFINED(JPN)
        LDA #$00
        STA dest
    .ELSE
        STZ dest
    .ENDIF
.ENDMACRO
