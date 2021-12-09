##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_ID_ETIQUETA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos da tabela Identificador Etiqueta |${produto}|,|${unidade}|,|${lote}|,|${quantidade}|
    Preencher campo    ${campoProduto}    ${produto}
    Click no Item    ${campoUnidade}
    Sleep    1
    Preencher campo    ${campoUnidadeInput}    ${unidade}
    Click no Item    ${campoLote}
    Sleep    1
    Preencher campo    ${campoLoteInput}    ${lote}
    Click no Item    ${campoQtd}
    Sleep    1
    Preencher campo    ${campoQtdInput}    ${quantidade}

Clicar no botao Salvar
    Click no Item    ${btnSalvar}

Validar cadastro realizado do identificador |${mensagem}|
    Valida Mensagem    ${MensagemToast}    ${mensagem}
