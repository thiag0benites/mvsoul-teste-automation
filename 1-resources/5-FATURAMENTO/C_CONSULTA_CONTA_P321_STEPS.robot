##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: M_USUARIO
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/5-FATURAMENTO/C_CONSULTA_CONTA_P321_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher o campo Prontuario |${prontuario}|
    Wait Until Element Is Visible       ${cpProntuario}         180
    Preencher campo  ${cpProntuario}     ${prontuario}
    Sleep    3

Clicar no botao[Pesquisar]
    Click Element       ${bntPesquisar}
    Sleep       3

Captura codigo|${suite}|${id}|
    Wait Until Element Is Visible    ${cpCodAtendimento}    120
    Should Not Be Empty    ${cpCodAtendimento}
    ${codigo}    Get Element Attribute    ${cpCodAtendimento}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "codAtendimento", valor "${codigo}"
    Sleep    6
