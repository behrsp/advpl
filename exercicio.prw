#include "PROTHEUS.CH"
#include "TOTVS.CH"


user function exercicios()

    Local nTempo := 7

    if nTempo >= 0 .AND. nTempo <= 2
        //MsgInfo("Voce � J�nior","J�nior")
        MsgInfo("Voce � Junior com - " + cValToChar(nTempo) + " - anos de experincia","J�nior" )
    elseif nTempo >= 3 .AND. nTempo <= 5
        MsgInfo("Voce � Pleno com - " + cValToChar(nTempo) + " - anos de experiencia","Pleno")
    else
        MsgInfo("Voce � Senior - " + cValToChar(nTempo) + " - anos de experi�ncia", "Senior")
    endif

return
