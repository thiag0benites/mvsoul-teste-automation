##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: C_MOV_CARDAPIO
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/C_MOV_CARDAPIO_PAGE.robot

*** Variable ***

*** Keywords ***
Clicar no botao[${nomeBtn}]
    IF    '${nomeBtn}' == 'Pesquisar'
        Wait Until Element Is Visible    ${btnPesquisar}    180
        Sleep    4
        Click Element    ${btnPesquisar}
    ELSE IF    '${nomeBtn}' == 'Executar'
        Wait Until Element Is Visible    ${btnExecutar}    30
        Sleep    2
        Click Element    ${btnExecutar}
    ELSE IF    '${nomeBtn}' == 'Reimprimir'
        Wait Until Element Is Visible    ${btnReimprimir}    30
        Sleep    2
        Click Element    ${btnReimprimir}
    ELSE IF    '${nomeBtn}' == 'Imprimir'
        Wait Until Element Is Visible    ${btnImprimir}    30
        Sleep    2
        Click Element    ${btnImprimir}
        Sleep    6
    END

Preencher campo Solicitacao|${solicitacao}|
    Sleep    3
    Preencher campo    ${cpSolicitacao}    ${solicitacao}

Captura codigo Atendimento|${suite}|${id}|
    Sleep    1
    Should Not Be Empty    ${cpAtendimento}
    ${codAtend}    Get Element Attribute    ${cpAtendimento}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "codAtendimento", valor "${codAtend}"
    Sleep    3

Captura Nome Paciente|${suite}|${id}|
    Sleep    1
    Should Not Be Empty    ${cpPaciente}
    ${nome}    Get Element Attribute    ${cpPaciente}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "nomePaciente", valor "${nome}"
    Sleep    3

Valida aba browser
    Switch Window
    Sleep    8
