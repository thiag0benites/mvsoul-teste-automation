##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para tela de M_VAL_PLACON
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_VAL_PLACON_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Excecoes do valores |${convenio}|, |${procedimentos}|, |${vigencia}|, |${valor}|
    Click no Item    ${campoConvenio}
    Preencher campo    ${campoConvenioInput}    ${convenio}
    Click no Item    ${campoProcedimento}
    Preencher campo    ${campoProcedimentoInput}    ${procedimentos}
    Click no Item    ${campoVigencia}
    Preencher campo    ${campoVigenciaInput}    ${vigencia}
    Click no Item    ${campoValor}
    Preencher campo    ${campoValorInput}    ${valor}
    Send keys    enter

Validar Campos |${convenio}|, |${procedimentos}|, |${vigencia}|, |${valor}|
    Validar Elemento Pelo Titulo    ${convenio}
    Validar Elemento Pelo Titulo    ${procedimentos}
    Validar Elemento Pelo Titulo    ${vigencia}
    Validar Elemento Pelo Titulo    ${valor}

Salvar e validar mensagem de sucesso |${mensagemSucesso}|
    Clicar no botao Apagar
    Clicar no botao Salvar do menu
    Valida Mensagem    ${MensagemToast}    ${mensagemSucesso}
