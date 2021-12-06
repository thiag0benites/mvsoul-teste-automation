##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para tela de M_HISTORICO_PRORROGACAO.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/M_HISTORICO_PRORROGACAO_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher codigo e Validar |${codigo}|
    Clicar no Botao Pesquisar
    Preencher campo    ${campoCodigo}    ${codigo}
    Clicar no Botao Executar
    Validar Elemento Pelo Titulo    ${codigo}

Preencher novo vencimento e Validar |${novaDtVencimento}|
    Click no Item    ${btnProrrogar}    
    Preencher campo    ${campoNovaDtVencimento}  ${novaDtVencimento} 
    Send keys  enter
    Validar Elemento Pelo Titulo    ${novaDtVencimento}

Preencher motivo|${motivo}| e Validar|${motivoProrrogacao}|
    Preencher campo  ${campoMotivo}     ${motivo} 
    Send keys  enter
    Validar Informacao Item     ${campoMotivoProrrogacao}   ${motivoProrrogacao}
    # Validar Elemento Pelo Titulo    ${motivoProrrogacao}

Prorrogar e validar mensagem |${mensagemSucesso}|
    Clicar Botao e Validar Mensagem    ${btnProrrogar2}    ${MensagemToast}    ${mensagemSucesso}
    Click no Item    ${btnOk}

Clicar Botao e Validar Mensagem
    [Arguments]    ${Botao}    ${MensagemRecebida}    ${MensagemEsperada}
    Click no Item    ${Botao}
    Valida Mensagem    ${MensagemRecebida}    ${MensagemEsperada}
    Sleep    1