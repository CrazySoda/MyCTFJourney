;-------
;   
;-------
.MODEL SMALL
.STACK 1000H
.Data
	CR EQU 0DH
	LF EQU 0AH
	number DB "00000$"
	STRING DB 100 DUP(?)
	INT_ DW 0
.CODE
wrong_function PROC
	PUSH BP
	MOV BP, SP
; ------------------ Line 7 ------------------
	LEA SI, STRING
	MOV [SI+0], 'w'
	MOV [SI+1], 'r'
	MOV [SI+2], 'o'
	MOV [SI+3], 'n'
	MOV [SI+4], 'g'
	MOV [SI+5], '$'
	LEA DX, STRING
	MOV AH, 09H
	INT 21H
L0:
	ADD SP, 0
	POP BP
	RET
wrong_function ENDP
main PROC
	MOV AX, @DATA
	MOV DS, AX
	PUSH BP
	MOV BP, SP
; ------------------ Line 12 ------------------
	SUB SP, 200
L1:
; ------------------ Line 13 ------------------
	SUB SP, 2
L2:
; ------------------ Line 14 ------------------
	SUB SP, 2
L3:
; ------------------ Line 17 ------------------
	LEA SI, STRING
	MOV [SI+0], 'W'
	MOV [SI+1], 'h'
	MOV [SI+2], 'a'
	MOV [SI+3], 't'
	MOV [SI+4], ' '
	MOV [SI+5], 'i'
	MOV [SI+6], 's'
	MOV [SI+7], ' '
	MOV [SI+8], 't'
	MOV [SI+9], 'h'
	MOV [SI+10], 'e'
	MOV [SI+11], ' '
	MOV [SI+12], 'l'
	MOV [SI+13], 'e'
	MOV [SI+14], 'n'
	MOV [SI+15], 'g'
	MOV [SI+16], 't'
	MOV [SI+17], 'h'
	MOV [SI+18], ' '
	MOV [SI+19], 'o'
	MOV [SI+20], 'f'
	MOV [SI+21], ' '
	MOV [SI+22], 't'
	MOV [SI+23], 'h'
	MOV [SI+24], 'e'
	MOV [SI+25], ' '
	MOV [SI+26], 'f'
	MOV [SI+27], 'l'
	MOV [SI+28], 'a'
	MOV [SI+29], 'g'
	MOV [SI+30], '?'
	MOV [SI+31], '$'
	LEA DX, STRING
	MOV AH, 09H
	INT 21H
	CALL new_line
L4:
; ------------------ Line 18 ------------------
	CALL int_intput
	MOV AX, INT_
	MOV [BP-202], AX
L5:
; ------------------ Line 20 ------------------
	MOV AX, [BP-202]
	PUSH AX
	PUSH 19
	POP BX
	POP AX
	CMP AX, BX
	JNE L6
	JMP L8
L6:
; ------------------ Line 21 ------------------
	CALL wrong_function
	PUSH 0
	POP AX
L7:
; ------------------ Line 22 ------------------
	PUSH 0
	POP AX
	JMP L86
L8:
; ------------------ Line 25 ------------------
	LEA SI, STRING
	MOV [SI+0], 'E'
	MOV [SI+1], 'n'
	MOV [SI+2], 't'
	MOV [SI+3], 'e'
	MOV [SI+4], 'r'
	MOV [SI+5], ' '
	MOV [SI+6], 't'
	MOV [SI+7], 'h'
	MOV [SI+8], 'e'
	MOV [SI+9], ' '
	MOV [SI+10], 'f'
	MOV [SI+11], 'l'
	MOV [SI+12], 'a'
	MOV [SI+13], 'g'
	MOV [SI+14], '$'
	LEA DX, STRING
	MOV AH, 09H
	INT 21H
	CALL new_line
L9:
; ------------------ Line 26 ------------------
	PUSH 0
	POP AX
	MOV [BP-204], AX
	PUSH AX
	POP AX
L10:
	MOV AX, [BP-204]
	PUSH AX
	PUSH 6
	POP BX
	POP AX
	CMP AX, BX
	JL L12
	JMP L13
	POP AX
L11:
	MOV AX, [BP-204]
	PUSH AX
	INC AX
	MOV [BP-204], AX
	POP AX
	JMP L10
L12:
; ------------------ Line 27 ------------------
	MOV AX, [BP-204]
	PUSH AX
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	CALL int_intput
	MOV AX, INT_
	MOV [BX], AX
	JMP L11
L13:
; ------------------ Line 31 ------------------
	PUSH 0
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	PUSH 112
	POP BX
	POP AX
	CMP AX, BX
	JNE L14
	JMP L16
L14:
; ------------------ Line 32 ------------------
	CALL wrong_function
	PUSH 0
	POP AX
L15:
; ------------------ Line 33 ------------------
	PUSH 0
	POP AX
	JMP L86
L16:
; ------------------ Line 36 ------------------
	PUSH 1
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	PUSH 97
	POP BX
	POP AX
	CMP AX, BX
	JNE L17
	JMP L19
L17:
; ------------------ Line 37 ------------------
	CALL wrong_function
	PUSH 0
	POP AX
L18:
; ------------------ Line 38 ------------------
	PUSH 0
	POP AX
	JMP L86
L19:
; ------------------ Line 41 ------------------
	PUSH 2
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	PUSH 51
	POP BX
	POP AX
	CMP AX, BX
	JNE L20
	JMP L22
L20:
; ------------------ Line 42 ------------------
	CALL wrong_function
	PUSH 0
	POP AX
L21:
; ------------------ Line 43 ------------------
	PUSH 0
	POP AX
	JMP L86
L22:
; ------------------ Line 46 ------------------
	PUSH 3
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	PUSH 51
	POP BX
	POP AX
	CMP AX, BX
	JNE L23
	JMP L25
L23:
; ------------------ Line 47 ------------------
	CALL wrong_function
	PUSH 0
	POP AX
L24:
; ------------------ Line 48 ------------------
	PUSH 0
	POP AX
	JMP L86
L25:
; ------------------ Line 51 ------------------
	PUSH 4
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	PUSH 53
	POP BX
	POP AX
	CMP AX, BX
	JNE L26
	JMP L28
L26:
; ------------------ Line 52 ------------------
	CALL wrong_function
	PUSH 0
	POP AX
L27:
; ------------------ Line 53 ------------------
	PUSH 0
	POP AX
	JMP L86
L28:
; ------------------ Line 56 ------------------
	PUSH 5
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	PUSH 100
	POP BX
	POP AX
	CMP AX, BX
	JNE L29
	JMP L31
L29:
; ------------------ Line 57 ------------------
	CALL wrong_function
	PUSH 0
	POP AX
L30:
; ------------------ Line 58 ------------------
	PUSH 0
	POP AX
	JMP L86
L31:
; ------------------ Line 62 ------------------
	LEA SI, STRING
	MOV [SI+0], 'L'
	MOV [SI+1], 'u'
	MOV [SI+2], 'c'
	MOV [SI+3], 'k'
	MOV [SI+4], 'y'
	MOV [SI+5], ' '
	MOV [SI+6], 'g'
	MOV [SI+7], 'u'
	MOV [SI+8], 'e'
	MOV [SI+9], 's'
	MOV [SI+10], 's'
	MOV [SI+11], '.'
	MOV [SI+12], ' '
	MOV [SI+13], 'K'
	MOV [SI+14], 'e'
	MOV [SI+15], 'e'
	MOV [SI+16], 'p'
	MOV [SI+17], ' '
	MOV [SI+18], 'g'
	MOV [SI+19], 'o'
	MOV [SI+20], 'i'
	MOV [SI+21], 'n'
	MOV [SI+22], 'g'
	MOV [SI+23], '!'
	MOV [SI+24], '$'
	LEA DX, STRING
	MOV AH, 09H
	INT 21H
	CALL new_line
L32:
; ------------------ Line 63 ------------------
	PUSH 0
	POP AX
	MOV [BP-204], AX
	PUSH AX
	POP AX
L33:
	MOV AX, [BP-204]
	PUSH AX
	PUSH 6
	POP BX
	POP AX
	CMP AX, BX
	JL L35
	JMP L36
	POP AX
L34:
	MOV AX, [BP-204]
	PUSH AX
	INC AX
	MOV [BP-204], AX
	POP AX
	JMP L33
L35:
; ------------------ Line 64 ------------------
	MOV AX, [BP-204]
	PUSH AX
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	CALL int_intput
	MOV AX, INT_
	MOV [BX], AX
	JMP L34
L36:
; ------------------ Line 68 ------------------
	PUSH 6
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	PUSH 95
	POP BX
	POP AX
	CMP AX, BX
	JNE L37
	JMP L39
L37:
; ------------------ Line 69 ------------------
	CALL wrong_function
	PUSH 0
	POP AX
L38:
; ------------------ Line 70 ------------------
	PUSH 0
	POP AX
	JMP L86
L39:
; ------------------ Line 73 ------------------
	PUSH 7
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	PUSH 99
	POP BX
	POP AX
	CMP AX, BX
	JNE L40
	JMP L42
L40:
; ------------------ Line 74 ------------------
	CALL wrong_function
	PUSH 0
	POP AX
L41:
; ------------------ Line 75 ------------------
	PUSH 0
	POP AX
	JMP L86
L42:
; ------------------ Line 78 ------------------
	PUSH 8
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	PUSH 48
	POP BX
	POP AX
	CMP AX, BX
	JNE L43
	JMP L45
L43:
; ------------------ Line 79 ------------------
	CALL wrong_function
	PUSH 0
	POP AX
L44:
; ------------------ Line 80 ------------------
	PUSH 0
	POP AX
	JMP L86
L45:
; ------------------ Line 83 ------------------
	PUSH 9
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	PUSH 112
	POP BX
	POP AX
	CMP AX, BX
	JNE L46
	JMP L48
L46:
; ------------------ Line 84 ------------------
	CALL wrong_function
	PUSH 0
	POP AX
L47:
; ------------------ Line 85 ------------------
	PUSH 0
	POP AX
	JMP L86
L48:
; ------------------ Line 88 ------------------
	PUSH 10
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	PUSH 121
	POP BX
	POP AX
	CMP AX, BX
	JNE L49
	JMP L51
L49:
; ------------------ Line 89 ------------------
	CALL wrong_function
	PUSH 0
	POP AX
L50:
; ------------------ Line 90 ------------------
	PUSH 0
	POP AX
	JMP L86
L51:
; ------------------ Line 93 ------------------
	PUSH 11
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	PUSH 95
	POP BX
	POP AX
	CMP AX, BX
	JNE L52
	JMP L54
L52:
; ------------------ Line 94 ------------------
	CALL wrong_function
	PUSH 0
	POP AX
L53:
; ------------------ Line 95 ------------------
	PUSH 0
	POP AX
	JMP L86
L54:
; ------------------ Line 98 ------------------
	LEA SI, STRING
	MOV [SI+0], 'A'
	MOV [SI+1], 'l'
	MOV [SI+2], 'm'
	MOV [SI+3], 'o'
	MOV [SI+4], 's'
	MOV [SI+5], 't'
	MOV [SI+6], ' '
	MOV [SI+7], 't'
	MOV [SI+8], 'h'
	MOV [SI+9], 'e'
	MOV [SI+10], 'r'
	MOV [SI+11], 'e'
	MOV [SI+12], '!'
	MOV [SI+13], ' '
	MOV [SI+14], 'k'
	MOV [SI+15], 'e'
	MOV [SI+16], 'e'
	MOV [SI+17], 'p'
	MOV [SI+18], ' '
	MOV [SI+19], 'g'
	MOV [SI+20], 'o'
	MOV [SI+21], 'i'
	MOV [SI+22], 'n'
	MOV [SI+23], 'g'
	MOV [SI+24], '!'
	MOV [SI+25], '$'
	LEA DX, STRING
	MOV AH, 09H
	INT 21H
	CALL new_line
L55:
; ------------------ Line 99 ------------------
	PUSH 0
	POP AX
	MOV [BP-204], AX
	PUSH AX
	POP AX
L56:
	MOV AX, [BP-204]
	PUSH AX
	PUSH 7
	POP BX
	POP AX
	CMP AX, BX
	JL L58
	JMP L59
	POP AX
L57:
	MOV AX, [BP-204]
	PUSH AX
	INC AX
	MOV [BP-204], AX
	POP AX
	JMP L56
L58:
; ------------------ Line 100 ------------------
	MOV AX, [BP-204]
	PUSH AX
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	CALL int_intput
	MOV AX, INT_
	MOV [BX], AX
	JMP L57
L59:
; ------------------ Line 103 ------------------
	PUSH 12
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	PUSH 2
	POP BX
	POP AX
	CWD
	IMUL BX
	PUSH AX
	PUSH 134
	POP BX
	POP AX
	CMP AX, BX
	JNE L60
	JMP L62
L60:
; ------------------ Line 104 ------------------
	CALL wrong_function
	PUSH 0
	POP AX
L61:
; ------------------ Line 105 ------------------
	PUSH 0
	POP AX
	JMP L86
L62:
; ------------------ Line 108 ------------------
	PUSH 13
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	PUSH 104
	POP BX
	POP AX
	CMP AX, BX
	JNE L63
	JMP L65
L63:
; ------------------ Line 109 ------------------
	CALL wrong_function
	PUSH 0
	POP AX
L64:
; ------------------ Line 110 ------------------
	PUSH 0
	POP AX
	JMP L86
L65:
; ------------------ Line 113 ------------------
	PUSH 14
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	PUSH 51
	POP BX
	POP AX
	CMP AX, BX
	JNE L66
	JMP L68
L66:
; ------------------ Line 114 ------------------
	CALL wrong_function
	PUSH 0
	POP AX
L67:
; ------------------ Line 115 ------------------
	PUSH 0
	POP AX
	JMP L86
L68:
; ------------------ Line 118 ------------------
	PUSH 15
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	PUSH 7
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	POP BX
	POP AX
	CMP AX, BX
	JNE L69
	JMP L71
L69:
; ------------------ Line 119 ------------------
	CALL wrong_function
	PUSH 0
	POP AX
L70:
; ------------------ Line 120 ------------------
	PUSH 0
	POP AX
	JMP L86
L71:
; ------------------ Line 123 ------------------
	PUSH 16
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	PUSH 107
	POP BX
	POP AX
	CMP AX, BX
	JNE L72
	JMP L74
L72:
; ------------------ Line 124 ------------------
	CALL wrong_function
	PUSH 0
	POP AX
L73:
; ------------------ Line 125 ------------------
	PUSH 0
	POP AX
	JMP L86
L74:
; ------------------ Line 128 ------------------
	PUSH 17
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	PUSH 51
	POP BX
	POP AX
	CMP AX, BX
	JNE L75
	JMP L77
L75:
; ------------------ Line 129 ------------------
	CALL wrong_function
	PUSH 0
	POP AX
L76:
; ------------------ Line 130 ------------------
	PUSH 0
	POP AX
	JMP L86
L77:
; ------------------ Line 133 ------------------
	PUSH 18
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	PUSH 82
	POP BX
	POP AX
	CMP AX, BX
	JNE L78
	JMP L80
L78:
; ------------------ Line 134 ------------------
	CALL wrong_function
	PUSH 0
	POP AX
L79:
; ------------------ Line 135 ------------------
	PUSH 0
	POP AX
	JMP L86
L80:
; ------------------ Line 138 ------------------
	LEA SI, STRING
	MOV [SI+0], 'C'
	MOV [SI+1], 'o'
	MOV [SI+2], 'r'
	MOV [SI+3], 'r'
	MOV [SI+4], 'e'
	MOV [SI+5], 'c'
	MOV [SI+6], 't'
	MOV [SI+7], ' '
	MOV [SI+8], 'f'
	MOV [SI+9], 'l'
	MOV [SI+10], 'a'
	MOV [SI+11], 'g'
	MOV [SI+12], '!'
	MOV [SI+13], '$'
	LEA DX, STRING
	MOV AH, 09H
	INT 21H
	CALL new_line
L81:
; ------------------ Line 140 ------------------
	PUSH 0
	POP AX
	MOV [BP-204], AX
	PUSH AX
	POP AX
L82:
	MOV AX, [BP-204]
	PUSH AX
	MOV AX, [BP-202]
	PUSH AX
	POP BX
	POP AX
	CMP AX, BX
	JL L84
	JMP L85
	POP AX
L83:
	MOV AX, [BP-204]
	PUSH AX
	INC AX
	MOV [BP-204], AX
	POP AX
	JMP L82
L84:
; ------------------ Line 141 ------------------
	MOV AX, [BP-204]
	PUSH AX
	POP AX
	SHL AX, 1
	LEA BX, [BP-2]
	SUB BX, AX
	PUSH BX
	POP BX
	MOV AX, [BX]
	PUSH AX
	POP AX
	CALL print_output
	JMP L83
L85:
; ------------------ Line 144 ------------------
	PUSH 0
	POP AX
	JMP L86
L86:
	ADD SP, 204
	POP BP
	MOV AX, 4CH
	INT 21H
main ENDP

new_line proc
    push ax
    push dx
    mov ah,2
    mov dl,cr
    int 21h
    mov ah,2
    mov dl,lf
    int 21h
    pop dx
    pop ax
    ret
new_line endp
print_output proc  ;print what is in ax
    push ax
    push bx
    push cx
    push dx
    push si
    lea si,number
    mov bx,10
    add si,4
    cmp ax,0
    jnge negate
    print:
    xor dx,dx
    div bx
    mov [si],dl
    add [si],'0'
    dec si
    cmp ax,0
    jne print
    inc si
    lea dx,si
    mov ah,9
    int 21h
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    ret
    negate:
    push ax
    mov ah,2
    mov dl,'-'
    int 21h
    pop ax
    neg ax
    jmp print
print_output endp

int_intput PROC
    PUSH BP
    MOV BP, SP
    SUB SP, 2

    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX

    MOV BX, 0
    MOV AX, 0
    MOV CX, 0
    MOV DX, 0 
    MOV [BP-2], 0

L_INPUT_LOOP:
    MOV AH, 01H
    INT 21H

    ; check if new_line
    CMP AL, CR
    JE L_NEW_LINE
    CMP AL, LF
    JE L_NEW_LINE

    ; check if minus sign
    CMP AL, '-'
    JNE L_MINUS_SIGN

    MOV [BP-2], 1
    JMP L_INPUT_LOOP

L_MINUS_SIGN:

    ; character to digit
    SUB AL, '0'
    MOV AH, 0
    MOV CX , AX

    ; BX = BX * 10 + AX
    MOV AX, 10
    MUL BX
    ADD AX, CX
    MOV BX, AX
    JMP L_INPUT_LOOP


L_NEW_LINE:

    ; check if minus sign
    CMP [BP-2], 1
    JNE L_ALL_DONE
    ; BX = -BX
    NEG BX

L_ALL_DONE:

    MOV INT_ , BX
    
    call new_line
    
    POP DX
    POP CX
    POP BX
    POP AX

    ADD SP, 2
    POP BP
    RET
int_intput endp
END main
