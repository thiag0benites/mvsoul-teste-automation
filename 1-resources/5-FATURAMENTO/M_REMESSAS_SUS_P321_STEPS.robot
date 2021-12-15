##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: M_REMESSAS_SUS_P321_STEPS
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_REMESSAS_SUS_P321_PAGE.robot

*** Variable ***

*** Keywords ***
Validar dados da remessa |${remessaDezembro2021}|
    Validar Elemento Pelo Titulo            ${remessaDezembro2021} 

Adicionar nova remessa 
    Click no Item               ${btnAdicionar} 

Preencher os campos da tabela Dados da fatura |${competencia}|,|${descricao}|
    Preencher campo    ${competenciaTableInput}     ${competencia}

    Click no Item       ${descricaoTable}
    Sleep    1
    Preencher campo    ${descricaoTableInput}       ${descricao}

Salvar insercao da nova remessa 
    Click no Item    ${btnSalvar}

Validar mensagem do cadastro da remessa |${MsgEsperada}|
    Valida Mensagem    ${ElementoMsgRecebida}    ${MsgEsperada}

