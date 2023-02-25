#include 'Protheus.ch'
#include 'Parmtype.ch'
#include 'TOTVS.ch'

user function RelTxt()

    if MsgYesNo("Você quer gerar o arquivo?")

        Processa({|| MntQry() },, "Processando....")
        MsAguarde({|| GerarArq() },,"O arquivo TXT está sendo gerado...")
    else
        Alert("Operação Cancelada pelo usuário.")
    ENDIF

RETURN NIL

/*monta query*/

static function MntQry()

    Local cQuery := ""

    cQuery := "SELECT B1_FILIAL AS FILIAL, B1_COD AS CODIGO, "
    cQuery += "B1_DESC AS DESCRICAO "
    cQuery += "FROM SB1990 WHERE D_E_L_E_T = '' "

    cQuery := CHANGEQUERY(cQuery)
        DbUseArea(.T.,"TOPCONN", TCGENQRY(,,cQuery),'TMP',.F.,.T.)



return nil


//funcao que gera arquivo
static function GerarArq()

    Local cDir      := "C:\TOTVS_LG\Protheus_data\views\"
    Local cArq      :="ArquivoDeBanco.txt"
    Local nHandle   := FCreate(cDir+cArq)
    //Local nLinha
    
    if nHandle < 0
        MsgAlert("Arquivo não Criado.","ERRO")
    elseif nHandle >= 1
        MsgAlert("Aquivo já existe")
        FClose()
    else     

    While (TMP->(!EOF) )

        FWrite(nHandle, TMP->(FILIAL) + " | " + TMP->(CODIGO) + " | " + TMP->(DESCRICAO) + CRLF)
        TMP->(dbSkip()) // vai para o proximo registro

    endDo
    FClose(nHandle)

/*         for nLinha := 1 to 200
            FWrite(nHandle, +cQuery+ StrZero(nlinha, 4) + CRLF)
        next nLinha */

        FClose()
    ENDIF

    if File("C:\TOTVS_LG\Protheus_data\views\ArquivoDeBanco.txt")
        MsgInfo("Arquivo criado com sucesso.")
    else
        Alert("Arquivo não criado.!","ERRO")
    ENDIF
RETURN
