##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_RECEBE_SOLICITACAO_PAGE.robot

*** Variable ***

*** Keywords ***
Informar o codigo Solicitacao e Usuario responsavel pela entrega |${codSolicitacao}|, |${usuarioRespEntrega}|
    Preencher campo    ${inputSolicitacao}    ${codSolicitacao}
    Sleep              1
    Preencher campo    ${inputUsuarioResp}    ${usuarioRespEntrega}
    Sleep              1

Marcar o checkbox confirmar
    Click no Item  ${checkboxConfirmar}

Clicar no botao Confirmar 
    Click no Item  ${botaoConfirmar}

Validar mensagem de confirmacao |${mensagem}|
    Valida Mensagem         ${MensagemSalvar}               ${mensagem}

Clicar no botao OK
    