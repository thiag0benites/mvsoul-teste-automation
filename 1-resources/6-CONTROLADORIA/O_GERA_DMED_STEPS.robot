##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para tela de O_GERA_DMED.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste

Resource                ../../2-pages/6-CONTROLADORIA/O_GERA_DMED_PAGE.robot

*** Variable ***

*** Keywords ***

Informar |${anoBase}|, Selecionar |${geraPor}| e Validar Campos
    Wait Until Element Is Visible    ${campoAnoBaseClick}    120
    Click no Item  ${campoAnoBaseClick}
    Preencher campo  ${campoAnoBaseInput}    ${anoBase}
    Wait Until Element Is Visible    ${campoGeraPorClick}    120
    Click no Item  ${campoGeraPorClick}  
    Preencher campo  ${campoGeraPorInput}  ${geraPor}
    
    Validar Elemento Pelo Titulo            ${anoBase} 
    Validar Elemento Pelo Titulo            ${geraPor} 

Informar e Validar |${empresa}|
    Preencher campo  ${campoEmpresa}  ${empresa}
    Validar Elemento Pelo Titulo            ${empresa} 

Preencher |${nomeResponsavel}|, CPF |${cpf}| e telefone |${ddd}| |${telefone}| 
    Preencher campo  ${campoNome}        ${nomeResponsavel}
    Preencher campo  ${campoCpf}        ${cpf}
    Preencher campo  ${campoDdd}        ${ddd}
    Preencher campo  ${campoTelefone}   ${telefone}
    Send keys   enter

Validar Campos |${nomeResponsavel}|, CPF |${cpf}| e telefone |${ddd}| |${telefone}|
    # Wait Until Element Is Visible           ${nomeResponsavel}    120
    Validar Elemento Pelo Titulo            ${nomeResponsavel} 
    Validar Elemento Pelo Titulo            ${cpf} 
    Validar Elemento Pelo Titulo            ${ddd} 
    Validar Elemento Pelo Titulo            ${telefone}


Clicar Botao e Validar Mensagem
    [Arguments]                        ${Botao}                    ${MensagemRecebida}            ${MensagemEsperada}   
    Click no Item                      ${Botao}
    Valida Mensagem                    ${MensagemRecebida}         ${MensagemEsperada}
 
    
Exportar e validar mensagem de sucesso |${mensagemSucesso}|
    Clicar Botao e Validar Mensagem    ${btnExportar}       ${MensagemToast}              ${mensagemSucesso} 
    Click no Item                      ${btnOk}
    
