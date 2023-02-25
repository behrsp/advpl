#include "PROTHEUS.CH"
#include "TOTVS.CH"


user function exercicios()

    Local nTempo := 7

    if nTempo >= 0 .AND. nTempo <= 2
        //MsgInfo("Voce é Júnior","Júnior")
        MsgInfo("Voce é Junior com - " + cValToChar(nTempo) + " - anos de experincia","Júnior" )
    elseif nTempo >= 3 .AND. nTempo <= 5
        MsgInfo("Voce é Pleno com - " + cValToChar(nTempo) + " - anos de experiencia","Pleno")
    else
        MsgInfo("Voce é Senior - " + cValToChar(nTempo) + " - anos de experiência", "Senior")
    endif

return
