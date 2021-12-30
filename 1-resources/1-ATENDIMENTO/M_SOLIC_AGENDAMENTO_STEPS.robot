##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Solicitação de Agendamento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_SOLIC_AGENDAMENTO_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Datas de Pesquisa |${DtInicial}| |${DtFinal}|
    Preencher Campo            ${CampoDtInicial}             ${DtInicial}
    Preencher Campo            ${CampoDtFinal}               ${DtFinal}

Escolher Parametro de Pesquisa
    [Arguments]         ${Situacao}
    Sleep  2
    Preencher Campo     ${CampoSituacao}       ${Situacao}
    Click no Item       ${BotaoPesquisar} 
    Wait Until Element Is Visible    xpath=//div[@data-member="TP_SITUACAO"][@title="${Situacao}"]        20

Pesquisar Solicitacoes por Situacao |${Situacao}|
    IF    '${Situacao}' == 'Aguardando'
        Escolher Parametro de Pesquisa    ${Situacao}       
    ELSE IF    '${Situacao}' == 'Agendado'
        Escolher Parametro de Pesquisa    ${Situacao}      
    ELSE IF    '${Situacao}' == 'Cancelado'
        Escolher Parametro de Pesquisa    ${Situacao}   
    ELSE IF    '${Situacao}' == 'Todas'
        Preencher Campo     ${CampoSituacao}       ${Situacao}
        Click no Item       ${BotaoPesquisar} 
        Wait Until Element Is Visible         ${StatusAguardando}        20
        Wait Until Element Is Visible         ${StatusAgendado}          20
    END
    

