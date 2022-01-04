##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Cadastro de Convênios
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/R_REPASSE_MEDICO_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar Parametros de Impressao |${Convenio}| |${Prestador}| |${Competencia}|
    Wait Until Element Is Visible    ${BotaoLovConvenio}    180
    Selecionar Item Na Lista    ${BotaoLovConvenio}    ${Convenio}    ${Convenio}
    Selecionar Item Na Lista    ${BotaoLovPrestador}    ${Prestador}    ${Prestador}
    Preencher Campo    ${CampoCompetencia}    ${Competencia}

Realizar Impressao do Relatorio
    Click no Item    ${BotaoImprimir}
    Sleep    3
    Switch Window    NEW
    Sleep    5
    Capture Page Screenshot
