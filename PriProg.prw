#include 'TOTVS.ch'
#include 'Protheus.ch'
#include 'Parmtype.ch'


user function SomaSub()

    Local nNumero1     := 0
    Local nNum2     := 10
    Local cOperacao := ""
    Local nResult   := 0

    //desenvolvimento do programa

    nNumero1 := Val(FwInputBox("Digite o primeiro numero: "))
    nNum2 := Val(FwInputBox("Digite o segundo numero: "))
    cOperacao := FwInputBox("Qual operação deseja realizar? (+ ,- ,* ,/)")

    if cOperacao == "+"
        nResult := Fsoma(nNumero1, nNum2)
    elseif cOperacao == "-"
        nResult := Fsubtr(nNumero1, nNum2)
    elseif cOperacao == "*"
        nResult := Fmult(nNumero1, nNum2)
    elseif cOperacao == "/"
        nResult := Fdivi(nNumero1, nNum2)
    ENDIF

    Alert("O Resultado da operação escolhida é: " + cValToChar(nResult))

return


static function Fsoma(n1, n2)

    Local nResult := n1 + n2

return(nResult)

static function Fsubtr(n1, n2)

    Local nResult := n1 - n2

return(nResult) 

static function Fmult(n1, n2)

    Local nResult := n1 * n2

return(nResult) 

static function Fdivi(n1, n2)

    Local nResult := n1 / n2

return(nResult) 
