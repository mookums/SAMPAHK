; #### SAMPAHK Core ####
; https://github.com/sampudf/SAMPAHK
; ####################

; UPDATE THIS OR YOUR MERGE WILL BE CLOSED.
; SOFTWARE VERSION: v0.3.0


F1::
IniRead, OutputVar, %A_MyDocuments%\Kessec\SAMPAHK\config.ini, Directories, game
MsgBox, The value is %OutputVar%.
