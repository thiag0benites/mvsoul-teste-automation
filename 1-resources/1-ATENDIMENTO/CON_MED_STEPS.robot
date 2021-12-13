##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Cobranças e tabelas
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/CON_MED_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher o campo Medico|${medico}|
    Wait Until Element Is Visible    ${cpMedico}    180
    Preencher campo    ${cpMedico}    ${medico}
    Sleep    3

Clicar no botao [executar]
    Click Element    ${btnExecutar}
    Sleep    3

Captura codigo|${suite}|${id}|
    Wait Until Element Is Visible    ${cpCodigo}    120
    Should Not Be Empty    ${cpCodigo}
    ${codigo}    Get Element Attribute    ${cpCodigo}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "codAtendimento", valor "${codigo}"
    Sleep    3
