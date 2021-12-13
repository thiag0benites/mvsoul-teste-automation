##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/6-CONTROLADORIA/LANCAMENTOS_LOTE_PAGE.robot

*** Keywords ***
Acessa tela
    Click no Item    ${Controladoria}
    Click no Item    ${Contabilidade}
    Sleep    5

Preenche Descricao|${Desc}|
    Preencher campo    ${CampoEditDescric}    ${Desc}

Preenche Lancamentos do Lote "Historico Padrao|${HistPad}|", "Descricao Comp Padrao|${DescCompPad}|", "Cod Reduzido Debt|${CodRedDebt}|", "Cod Reduzido Cred|${CodRedCred}|", Valor Moeda|${VlMoeda}|", "Data Lancamento|${data}|"
    Clicar no Campo e Preencher Informacao    ${BtnHistPadrao}    ${CampoFiltro}    ${HistPad}
    Click no Item    ${BtnFiltrar}
    Click no Item    ${BtnOkFiltrar}
    Preencher campo    ${CampoDescrComplem}    ${DescCompPad}
    Inserir Data Lancamento |${data}|
    Click no Item    ${CampoCodReduzDebt}
    Clicar no Campo e Preencher Informacao    ${BtnCodReduzDebt}    ${CampoFiltro}    ${CodRedDebt}
    Click no Item    ${BtnFiltrar}
    Click no Item    ${BtnOkFiltrar}
    Click no Item    ${CampoCodReduzCred}
    Clicar no Campo e Preencher Informacao    ${BtnCodReduzCred}    ${CampoFiltro}    ${CodRedCred}
    Click no Item    ${BtnFiltrar}
    Click no Item    ${BtnOkFiltrar}
    Clicar no Campo e Preencher Informacao    ${CampoValorMoeda}    ${CampoEditDescric}    ${VlMoeda}
    Click no Item    ${CampoHist}
    Click no Item    ${BtnGravar}
    Validar Item    ${MsgGravar}

Gravar Alteracoes
    Click no Item    ${BtnGravar}
    Validar Item    ${MsgGravar}
    Double Click Element    ${CampoAcesso}

Inserir Data Final |${data}|
    Sleep    2
    ${dd}    Get Substring    ${data}    0    2
    ${ddPrimeriaPosicao}    Get Substring    ${dd}    0    1
    IF    ${ddPrimeriaPosicao} == 0
        ${dd}    Get Substring    ${data}    1    2
    END
    ${MES}    Get Substring    ${data}    3    6
    ${aaaa}    Get Substring    ${data}    7    12
    Click no Item    ${CampoDataFinal}
    Click no Item    ${BtnDataFinal}
    # Click no Item    ${SetaDoCalendario}
    ${anoInicio}=    Get WebElement    xpath://select[@class='ui-datepicker-year']//option[contains(text(),'${aaaa}')]
    Should Be Equal    ${anoInicio.text}    ${aaaa}
    Click no Item    ${anoInicio}
    Sleep    1
    ${mesInicio}=    Get WebElement    xpath://select[@class='ui-datepicker-month']//option[contains(text(),'${MES}')]
    Should Be Equal    ${mesInicio.text}    ${MES}
    Click no Item    ${mesInicio}
    Sleep    1
    ${diaInicio}=    Get WebElement    xpath://a[contains(text(),'${dd}')]
    Should Be Equal    ${diaInicio.text}    ${dd}
    Click no Item    ${diaInicio}
    Sleep    1

Inserir Data Lancamento |${data}|
    Sleep    2
    ${dd}    Get Substring    ${data}    0    2
    ${ddPrimeriaPosicao}    Get Substring    ${dd}    0    1
    IF    ${ddPrimeriaPosicao} == 0
        ${dd}    Get Substring    ${data}    1    2
    END
    ${MES}    Get Substring    ${data}    3    6
    ${aaaa}    Get Substring    ${data}    7    12
    Click no Item    ${CampoDataLancamento}
    Click no Item    ${BtnDataFinal}
    # Click no Item    ${SetaDoCalendario}
    ${anoInicio}=    Get WebElement    xpath://select[@class='ui-datepicker-year']//option[contains(text(),'${aaaa}')]
    Should Be Equal    ${anoInicio.text}    ${aaaa}
    Click no Item    ${anoInicio}
    Sleep    1
    ${mesInicio}=    Get WebElement    xpath://select[@class='ui-datepicker-month']//option[contains(text(),'${MES}')]
    Should Be Equal    ${mesInicio.text}    ${MES}
    Click no Item    ${mesInicio}
    Sleep    1
    ${diaInicio}=    Get WebElement    xpath://a[contains(text(),'${dd}')]
    Should Be Equal    ${diaInicio.text}    ${dd}
    Click no Item    ${diaInicio}
    Sleep    1
