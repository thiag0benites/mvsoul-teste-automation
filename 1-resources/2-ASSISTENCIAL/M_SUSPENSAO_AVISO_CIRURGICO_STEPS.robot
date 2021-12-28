##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Passos da tela M_SUSPENSAO_AVISO_CIRURGICO_STEPS
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_SUSPENSAO_AVISO_CIRURGICO_PAGE.robot

*** Variable ***

*** Keywords ***
Acessar o Aguardando realizacao
    Click no Item    ${abaAguardRealizacao}
    Sleep    1

Preencher o campo Aviso da cirurgia |${numAviso}|
    Sleep    1
    Preencher campo    ${campoAviso}    ${numAviso}
    Send Keys    Enter

Suspender o aviso cirurgico
    Click no Item    ${buttonSuspender}
    Sleep    1

Preencher os campos Motivo e observacao para realizar a suspensao |${motivo}|,|${observacao}|
    Preencher campo    ${campoMotivo}    ${motivo}
    Sleep    1
    Preencher campo    ${campoObservacao}    ${observacao}
    Sleep    1

Clicar em cancelar 
    Click no Item                          ${buttonCancelar}

Clicar em confirmar suspensao
    Click no Item    ${buttonConfirmar}

Validar mensagem de cancelamento da suspensao |${MsgEsperada}|
    Valida Mensagem    ${ElementoMsgRecebida}    ${MsgEsperada}
