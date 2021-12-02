##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para tela de O_DOC_STATUS.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste

Resource                ../../2-pages/6-CONTROLADORIA/O_DOC_STATUS_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher codigo e Validar |${codigo}|
    Preencher campo          ${campoCodigo}      ${codigo}
    Clicar no Botao Executar
    Validar Elemento Pelo Titulo                 ${codigo} 

Preencher observacao e Validar |${observacao}|
    Preencher campo          ${campoObservacao}      ${observacao}
    Send keys   enter
    Validar Elemento Pelo Titulo                 ${observacao} 

Alterar data |${dtVencimento}| e validar mensagem |${mensagemSucesso}|
    Preencher campo          ${campoDataVencimento}      ${dtVencimento}
    Clicar Botao e Validar Mensagem    ${btnAlteraData}       ${MensagemToast}              ${mensagemSucesso} 
    Click no Item                      ${btnOk}

Clicar Botao e Validar Mensagem
    [Arguments]                        ${Botao}                    ${MensagemRecebida}            ${MensagemEsperada}   
    Click no Item                      ${Botao}
    Valida Mensagem                    ${MensagemRecebida}         ${MensagemEsperada}
    
    
