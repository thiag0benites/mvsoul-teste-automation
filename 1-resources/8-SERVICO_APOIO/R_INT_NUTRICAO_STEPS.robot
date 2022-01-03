##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Gerenciamento de Chamados
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/R_INT_NUTRICAO_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar Parametros de Impressao |${Copa}| |${UnidInternacao}|
    Wait Until Element Is Visible    ${BotaoLovCopa}    180
    Selecionar Item Na Lista    ${BotaoLovCopa}     ${Copa}    ${Copa}
    Selecionar Item Na Lista    ${BotaoLovUnidInternacao}     ${UnidInternacao}    ${UnidInternacao}
    
Realizar Impressao do Relatorio
    Click no Item    ${BotaoImprimir}
    Sleep  20
    Switch Window    NEW
    Sleep  5
    Capture Page Screenshot
