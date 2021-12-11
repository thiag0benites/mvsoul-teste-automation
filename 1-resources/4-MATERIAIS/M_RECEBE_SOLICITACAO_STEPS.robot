##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_RECEBE_SOLICITACAO_PAGE.robot

*** Variable ***

*** Keywords ***
Minimizar notificacao
    Click no Item               ${minimizeNotificacao}

Clicar no botao Pesquisar
    Click no Item               ${btnPesquisar}   
    Sleep   2

Clicar no botao Executar
    Click no Item               ${btnExecute}   
    Sleep   2

Informar o codigo Solicitacao e Usuario responsavel pela entrega |${usuarioRespEntrega}|
    Preencher campo    ${inputUsuarioResp}            ${usuarioRespEntrega}

Marcar o checkbox confirmar
    Click no Item  ${checkboxConfirmar}

Clicar no proximo registro
    Click no Item  ${proxRegistroBtn}
    Sleep    1

Clicar no botao Confirmar 
    Click no Item  ${botaoConfirmar}

Validar mensagem de confirmacao |${mensagem}|
    Valida Mensagem         ${MensagemSalvar}               ${mensagem}

Clicar no botao OK
    Click no Item  ${buttonOk}