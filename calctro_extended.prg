; Calctro by Frog - intro for HP-41 (in FOCAL)
; frog@enlight.ru
; 06.01.2021

; This is extended version! (472 bytes). For short party version see calctro.prg
; It's too large to fit into my HP-41 with extension. Install more memory or use v41 emulator.

LBL 00


"----------"
>"              "
AVIEW


XEQ 06
XEQ 08
"BUSY"
AVIEW

XEQ 06

PSE
PSE
PSE
PSE
"CONNECT 300"
AVIEW
PSE
PSE
PSE

"DIHALT BBS"
AVIEW
1.00501
XEQ 05


; speaking face 

1.00601
STO 01
LBL 02     
" <-> HELLO"
AVIEW
" <=> HELLO"
AVIEW
ISG 01     
GTO 02     


PSE
" FROG HERE.."
AVIEW
PSE
PSE
" ENJOY 472"
>"B INTRO       "
AVIEW
"   FOR HP4"
>"1 CALC        "
AVIEW
" "
AVIEW
"..WITH MUSIC"
AVIEW
XEQ 04
PSE
" "
AVIEW
PSE
"AND VFX.."
PSE
AVIEW
"S5S2S2S25J"
XEQ 07
"aeaeeaeaea"
XEQ 07

PSE


"    cU AT "
>"cc2021        "
AVIEW
CLA
>"NO CARRIER"
AVIEW

XEQ 08
PSE
CLA
>"   LaaPING  "
AVIEW
PSE

GTO 00

RTN




; ========== SUBROUTINES ===========







; "London Bridge" tune / I want to believe ;) /   ()
;     G F E D C B A  
; 0 1 2 3 4 5 6 7 8 9
LBL 04

TONE 5
TONE 4
TONE 5
TONE 6
TONE 7
TONE 6
TONE 5
TONE 8
TONE 7
TONE 6
TONE 7
TONE 6
TONE 5

TONE 5
TONE 4
TONE 5
TONE 6
TONE 7
TONE 6
TONE 5
TONE 8
TONE 5
TONE 7
TONE 3
RTN




; pause ( count )
LBL 05

STO 01
LBL 01     
PSE
ISG 01     
GTO 01     
RTN



; Simulate DTMF tones / not even close ;) /  ()
LBL 06
1.00301
XEQ 05
"ATDT1107792"
AVIEW
TONE 1
TONE 1
TONE 2
TONE 5
TONE 5
TONE 3
TONE 6
RTN

; char blocks shift and swap ( str str ) 
LBL 07
1.02001
STO 01
LBL "W"     
ASTO X
ASHF
ARCL X
AVIEW
ISG 01     
GTO "W"


; busy sound ()
LBL 08
1.00801
STO 01
LBL 03     
TONE 7
ISG 01     
GTO 03     
RTN

END
