##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: M_TISS_SOLICITACAO
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_TISS_SOLICITACAO_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher o campo atendimento |${codAtendimento}|
    Preencher campo    ${inputAtendimento}    ${codAtendimento}

Preencher a tabela de procedimento |${procedimento}|
    Click no Item       ${procedimentoTable}
    Sleep    1
    Preencher campo    ${procedimentoTableInput}    ${procedimento}

Clicar no botao Criar Guia 
    Click no Item  ${buttonCriarGuia}

Validar a criacao da guia na tabela |${dado}|
    Validar Elemento Pelo Titulo    ${dado}

Clicar no botao autorizar 
    Click no Item  ${buttonAutorizar}

Clicar no botao Nao    
    Click no Item  ${buttonNao}
