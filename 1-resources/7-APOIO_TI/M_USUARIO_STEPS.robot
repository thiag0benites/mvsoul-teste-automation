##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: M_USUARIO
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/7-APOIO_TI/M_USUARIO_PAGE.robot
Library         FakerLibrary    locale=pt_BR

*** Variable ***
${usuario}    
${cracha}    
${matricula}    
*** Keywords ***
Preencher os campos Identificacao|${identificacao}|, Nome Completo|${nomeCompleto}|, Email|${email}|, DDD|${ddd}|, Celular|${celular}|, Matricula|${matricula}|, Cracha|${cracha}|, Data Nascimento|${dtNasc}|, Observaca|${observacao}|, |${suite}|${id}|
    Wait Until Element Is Visible           ${cpUsuario}            240
    Sleep       3
    ${usuario}      Random Number    digits=8    fix_len=True
    Preencher Campo      ${cpUsuario}            ${usuario}
    Sleep       2
    Preencher Campo     ${cpNome}           ${nomeCompleto}
    Sleep       2
    Preencher Campo     ${cpDtNasc}      ${dtNasc}
    Sleep       2
    Preencher Campo     ${cpObservacao}     ${observacao}
    Sleep       2
    Preencher Campo         ${cpEmail}      ${email}
    Sleep       2
    Preencher Campo         ${cpDDD}        ${ddd}
    Sleep       2
    Preencher Campo         ${cpCelular}        ${celular}
    Sleep       2
    ${matricula}      Random Number    digits=6    fix_len=True
    Preencher Campo         ${cpMatricula}          ${matricula}
    Sleep       2
    ${cracha}       Random Number    digits=9    fix_len=True
    Preencher Campo         ${cpCracha}         ${cracha}
    Sleep       3
    Altera massa de dados da "${suite}", linha "${id}", coluna "identificacao", valor "${usuario}"
    Sleep       3
    Altera massa de dados da "${suite}", linha "${id}", coluna "matricula", valor "${matricula}"
    Sleep       3
    Altera massa de dados da "${suite}", linha "${id}", coluna "cracha", valor "${cracha}"
    Sleep       3

Selecionar Profissao|${profissao}|
    Sleep       3
    Preencher Campo     ${cpProfissao}      ${profissao}
    Press Keys      ${cpProfissao}          Enter

Selecionar Papel principal|${papel}|
    Sleep       1
    Click Element       ${elemPapel}
    Sleep       1
    Click Element       ${escolhaPapel}
    Sleep       3
    Click Element       ${btnOkPapel}
    Sleep       4
    Click Element       ${elemTpPapel}
    Sleep       1
    Preencher Campo       ${cpPrincipal}        ${papel}
    Press keys      ${cpPrincipal}      ENTER
    Sleep       6
    
Clicar no botao[${nomeBtn}]
    IF    '${nomeBtn}' == 'Reconciliar'
        Wait Until Element Is Visible    ${btnReconciliar}    30
        Sleep    4
        Click Element    ${btnReconciliar}
    ELSE IF    '${nomeBtn}' == 'OK'
        Wait Until Element Is Visible    ${btnOk}    30
        Sleep    4
        Click Element    ${btnOk}
    END
