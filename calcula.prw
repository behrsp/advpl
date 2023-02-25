#include "TOTVS.ch"
#include "PROTHEUS.ch"
#include "RWMAKE.ch"


user function calculaIMC()

    Local nAltura, nPeso


    @ 200,001 TO 410,480 DIALOG oDlg TITLE OemToAnsi( "Tela IMC" )
    @ 02,10 to 095,230
    @ 10,018 Say "Este programa calcula o IMC - Indice de maça corporea"
    @ 45,018 MSGET nAltura SIZE 55,11 of oDlg PIXEL PICTURE "@!"
    @ 45,078 MSGET nPeso SIZE 55,11 of oDlg PIXEL PICTURE "@!"
    @ 70,158 BMPBUTTON  TYPE 02 ACTION NIL
    @ 70,188 BMPBUTTON TYPE 01 ACTION NIL

    Activate Dialog oDlg Centered

RETURN

