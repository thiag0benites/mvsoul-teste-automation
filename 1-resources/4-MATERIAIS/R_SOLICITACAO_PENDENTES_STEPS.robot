##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de    Acompanhamento de Solicitacoes de Compras
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/R_SOLICITACAO_PENDENTES_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher Estoque e Produto |${Estoque}|
    Wait Until Element Is Visible      ${CampoEstoque}        250
    Preencher Campo                    ${CampoEstoque}        ${Estoque}
Preencher Intervalo Fixo |${DataIni}| |${DataFim}|
    Preencher Campo                    ${CampoDataIni}        ${DataIni}
    Preencher Campo                    ${CampoDataFim}        ${DataFim}
    

Validar Relatorio
    Click no Item              ${BotaoImprimir}        
    Sleep    3
    Switch Window    NEW
    Sleep    5
    Capture Page Screenshot
