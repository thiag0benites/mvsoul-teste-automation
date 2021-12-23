##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Gerenciamento Centralizado de    Leitos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_CENTRAL_LEITOS_PAGE.robot

*** Variable ***

*** Keywords ***
Realizar Consulta por |${Situacao}| |${DtInicial}| |${DtFinal}|
    IF    '${Situacao}' == 'Solicitada'
        Preencher Campos de Parametros de Pesquisa |${Situacao}| |${DtInicial}| |${DtFinal}|
        Click Elemento por titulo    Executar Consulta
        Wait Until Element Is Visible    xpath=//div[@data-member="TP_SITUACAO"][@title="${Situacao}"]    20
    ELSE IF    '${Situacao}' == 'Atendida'
        Click Elemento por titulo    Procurar
        Preencher Campos de Parametros de Pesquisa |${Situacao}| |${DtInicial}| |${DtFinal}|
        Click Elemento por titulo    Executar Consulta
        Wait Until Element Is Visible    xpath=//div[@data-member="TP_SITUACAO"][@title="${Situacao}"]    20
    END

Preencher Campos de Parametros de Pesquisa |${Situacao}| |${DtInicial}| |${DtFinal}|
    Preencher Campo    ${CampoSituacaoAtual}    ${Situacao}
    Preencher Campo    ${CampoDtInicial}    ${DtInicial}
    Preencher Campo    ${CampoDtFinal}    ${DtFinal}
