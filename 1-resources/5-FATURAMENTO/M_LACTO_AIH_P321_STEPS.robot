##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Passo a passo da M_LACTO_AIH_P321
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_LACTO_AIH_P321_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar pelo codigo do atendimento 
    Click no Item    ${btnPesquisar}

Executar a pesquisa
    Click no Item    ${btnExecutar}

Validar Resultado da Pesquisa |${dadosPesquisa}|
    Validar Elemento Pelo Titulo            ${dadosPesquisa}    

Ir para a aba Conta AIH 
    Click no Item    ${abaConta}

Adicionar novo registro na tabela 
    Click no Item    ${btnAdicionar}

Preencher os campos da tabela  

Salvar os dados inseridos 
    Click no Item    ${btnSalvar}

Validar mensagem |${MsgEsperada}|
    Valida Mensagem    ${ElementoMsgRecebida}    ${MsgEsperada}

Ver Itens da Conta 
    Click no Item    ${abaItens}

Ver criticas da conta
    Click no Item    ${abaCriticas}
