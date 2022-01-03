##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de    Acompanhamento de Solicitacoes de Compras
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/R_POS_EST_CONSO_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher Estoque e Produto |${Estoque}| |${Produto}|
    Wait Until Element Is Visible      ${CampoEstoque}        250
    Preencher Campo                    ${CampoEstoque}        ${Estoque}
    Preencher Campo                    ${CampoProduto}        ${Produto}
Preencher Competencia |${DataIni}|
    Preencher Campo                    ${CampoDataIni}        ${DataIni}
    

Validar Relatorio
    Click no Item              ${BotaoImprimir}        
    Sleep    3
    Switch Window    NEW
    Sleep    5
    Capture Page Screenshot
