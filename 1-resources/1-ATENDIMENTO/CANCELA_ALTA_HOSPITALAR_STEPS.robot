##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para tela de O_GERA_DMED.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste

Resource                ../../2-pages/1-ATENDIMENTO/CANCELA_ALTA_HOSPITALAR_PAGE.robot

*** Variable ***

*** Keywords ***



Informar codigo de atendimento |${codigo}|  
    Preencher campo  ${campoAtendimentoInput}  ${codigo}
    Send Keys   enter

Validar Preenchimento |${nomePaciente}| 
    Validar Elemento Pelo Titulo            ${nomePaciente} 

Clicar Botao e Validar Mensagem
    [Arguments]                        ${Botao}                    ${MensagemRecebida}            ${MensagemEsperada}   
    Click no Item                      ${Botao}
    Valida Mensagem                    ${MensagemRecebida}         ${MensagemEsperada}
 
    
Cancelar Altar e validar mensagem |${mensagemSucesso}|
    Click no Item   ${btnCancelarAlta}
    Click no Item   ${btnSim}
    Clicar Botao e Validar Mensagem    ${btnSair}       ${MensagemToast}              ${mensagemSucesso} 
    Click no Item                      ${btnOk}
    
