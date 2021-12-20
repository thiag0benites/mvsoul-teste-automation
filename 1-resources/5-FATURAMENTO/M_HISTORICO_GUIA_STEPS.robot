##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Historico de Guias
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_HISTORICO_GUIA_PAGE.robot

*** Variable ***

*** Keywords ***
Acessar Tela pelo Botao |${Atend}|
    Wait Until Element Is Visible    ${BotaoHistorico}    250
    Preencher Campo    ${CampoAtend}    ${Atend}
    Click Elemento por titulo    Executar Consulta
    Sleep    3
    Click no Item    ${BotaoHistorico}
    Sleep    2

Adicionar nova Guia |${Obs}|
    Click Elemento por titulo    Adicionar
    Preencher Campo    ${CampoObs}    ${Obs}
