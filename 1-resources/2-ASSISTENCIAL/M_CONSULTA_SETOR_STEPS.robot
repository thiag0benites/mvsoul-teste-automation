##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Consulta de Setores
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_CONSULTA_SETOR_PAGE.robot

*** Variable ***

*** Keywords ***

Abrir Painel e acessar caminho da Tela
    Wait Until Element Is Visible          ${BotaoFiltro}    250
    Click no Item                          ${BotaoFiltro}
    Click no Item                          ${BotaoSetor}
    Sleep    5

Acessar e Alterar Setores |${Setor1}| |${Setor2}| |${Setor3}|
    Selecionar Item Na Lista               ${LovSetores}    ${Setor1}    ${Setor1}
    Click no Item                          ${BotaoAdd} 
    Selecionar Item Na Lista               ${LovSetores}    ${Setor2}    ${Setor2}
    Click no Item                          ${BotaoAdd} 
    Selecionar Item Na Lista               ${LovSetores}    ${Setor3}    ${Setor3}
    Click no Item                          ${BotaoAdd} 
    Click no Item                          ${BotaoRemove}
    Sleep    1
    Click no Item                          ${BotaoRemove}
    Sleep    1
    Click no Item                          ${BotaoOk}
    Sleep    3

Validar Insercao de Setor |${SetorCod}|
    Validar Elemento Pelo Titulo    ${SetorCod}
    Sleep    2