##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Anexo de Paciente
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_TIPPRE_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher Descricao e Esquema |${Descricao}| |${Esquema}|
    Preencher Campo        ${CampoDesc}        ${Descricao}
    Preencher Campo        ${CampoEsq}         ${Esquema}
    Send Keys    TAB

Preencher Estoque e Produto |${Estoque}| |${Produto}|
    Preencher Campo        ${CampoEst}        ${Estoque}
    Preencher Campo        ${CampoProd}       ${Produto}
Salvar e Validar |${MensagemEsperada}|
    Click Elemento por titulo               Salvar
    Wait Until Element Is Visible         xpath=//*[text()='${MensagemEsperada}']    250
    Sleep    3
    
