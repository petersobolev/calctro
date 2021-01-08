; Calctro by Frog - intro for HP-41 (in FOCAL) with HP82106A
; frog@enlight.ru
; 07.01.2021

; Short party version - 217 bytes (3 regs left)
; fits HP41CV with HP82106A memory module
; ------------------

CLD
PSE

; Simulate DTMF tones ( not even close ;) 
"ATDT1107792"
AVIEW
PSE
TONE 1
TONE 1
TONE 2
TONE 5
TONE 5
TONE 3
TONE 6

PSE
PSE
PSE
"CONNECT 300"
AVIEW
BEEP
PSE
PSE
"FROG HERE.."
AVIEW
PSE
PSE

; scroll
"  CALCTRO "
>"FOR HP41      "
AVIEW

; speaking face 
1.00601
STO 01
LBL 02     
"<->"
AVIEW
"<=>"
AVIEW
ISG 01     
GTO 02     
PSE

CLD

; music
; "London Bridge" tune ( I want to believe ;) 
;     G F E D C B A  
; 0 1 2 3 4 5 6 7 8 9

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
" "
AVIEW
PSE
"NO CARRIER"
AVIEW

; busy sound
TONE 7
TONE 7
TONE 7
TONE 7
TONE 7
TONE 7

"CU AT CC2021"
AVIEW
PSE
PSE
CLD

; flying goose
LBL 09
1
GTO 09

END
