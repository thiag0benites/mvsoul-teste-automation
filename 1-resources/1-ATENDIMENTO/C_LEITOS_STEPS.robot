##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Consulta leitos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/C_LEITOS_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar Leitos por Tipo de acomodacao
    Wait Until Element Is Visible    ${elemSelecionar}    180
    Click Element    ${elemSelecionar}
    Sleep    3
    Click Element    ${tipoAcomodacao}

Captura codigo|${suite}|${id}|
    Wait Until Element Is Visible    ${codLeito}    120
    Should Not Be Empty    ${codLeito}
    ${codigo}    Get Element Attribute    ${codLeito}    title
    Sleep    3
    Altera massa de dados da "${suite}", linha "${id}", coluna "codLeitos", valor "${codigo}"
    Sleep    4
