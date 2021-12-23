##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para consultar ordens de compra.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../2-pages/4-MATERIAIS/O_CANSOL_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher o Codigo |${codigo}| e validar Codigo
    Wait Until Element Is Visible    ${inputCodigo}
    Preencher campo                  ${inputCodigo}    ${codigo}    
    Clicar no botao Executar
    Validar Elemento Pelo Titulo     ${codigo}

Preencher o Cancelar |${motivoCancelamento}|
    Click Element                   ${campoMotivoCancel}
    Preencher campo                 ${campoMotivoCancelamentoInput}    ${motivoCancelamento}
    Send keys                       enter
    Validar Elemento Pelo Titulo    ${motivoCancelamento}gi

Preencher o Descricao Nao Atendimento |${descricaoNaoAtendimento}| e validar mensagem |${mensagemSucesso}|

    Wait Until Element Is Visible    ${campoDescricaoNaoAtendimento}
    Preencher campo                  ${campoDescricaoNaoAtendimento}    ${descricaoNaoAtendimento} 
    Send keys                        tab
    Validar Elemento Pelo Titulo     ${descricaoNaoAtendimento}         
    Send keys                        Enter
    Click Element                    ${btnConfimar}
    
    Wait Until Element Is Visible    ${btnSim}
    Click Element                    ${btnSim}

    Wait Until Element Is Visible    ${mensagemApresentada}    120
    Element Should Contain           ${mensagemApresentada}    ${mensagemSucesso}

    Click Element    ${btnOk}
    Sleep            1










