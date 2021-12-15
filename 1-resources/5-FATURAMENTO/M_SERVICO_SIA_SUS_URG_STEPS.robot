##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: M_SERVICO_SIA_SUS_URG
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_SERVICO_SIA_SUS_URG_PAGE.robot

*** Variable ***

*** Keywords ***
Adicionar servico
    Click no Item               ${btnAdicionar} 

Preencher a tabela para adicionar um servico |${servico}|,|${procedimento}|,|${cbo}|
    Preencher campo    ${campoServico}                      ${servico}

    Click no Item       ${campoProcedimento}
    Sleep    1
    Preencher campo    ${campoProcedimentoInput}            ${procedimento}

    Click no Item       ${campoCBO}
    Sleep    1
    Preencher campo    ${campoCBOInput}                     ${cbo}

Salvar cadastro do servico
    Click no Item               ${btnSalvar} 

Validar cadastro realizado do servico |${MsgEsperada}|
    Valida Mensagem    ${ElementoMsgRecebida}    ${MsgEsperada}
