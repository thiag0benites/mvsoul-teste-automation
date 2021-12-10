##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/1-ATENDIMENTO/M_TISS_IMPRESSAO_PAGE.robot

*** Variable ***

*** Keywords ***
Informar o codigo do atendimento |${codAtendimento}|
    Preencher campo                  ${codigoAtendimento}              ${codAtendimento}
    Sleep                            2

Validar Resultado da Pesquisa do atendimento |${numAtend}|
    Validar Elemento Pelo Titulo            ${numAtend}

Clicar no botao Rel. G. TISS 
    Click no Item  ${btnRelGTISS}

Selecionar na saida do relatorio a opcao tela |${saida}|
    Click no Item         ${selectSaidaRelatorio}
    Preencher campo       ${selectSaidaRelatorio}           ${saida}

Selecionar na saida do relatorio a opcao Impressora |${saida}|
    Click no Item         ${selectSaidaRelatorio}
    Preencher campo       ${selectSaidaRelatorio}           ${saida}

Clicar no botao Imprimir 
    Click no Item  ${btnImprimir}
    Sleep     30