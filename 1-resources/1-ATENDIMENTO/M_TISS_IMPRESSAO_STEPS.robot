##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_TISS_IMPRESSAO_PAGE.robot

*** Variable ***

*** Keywords ***
Informar o código do atendimento 
    Preencher campo                  ${codAtendimento}              1000001647 
    Sleep                            2

Validar Resultado da Pesquisa do atendimento
    Validar Elemento Pelo Titulo            40808025

Clicar no botão Rel. G. TISS 
    Click no Item  ${btnRelGTISS}

Selecionar na saída do relatorio a opcao tela
    Click no Item         ${selectSaidaRelatorio}
    Preencher campo       ${selectSaidaRelatorio}           Tela

Selecionar na saída do relatorio a opcao Impressora
    Click no Item         ${selectSaidaRelatorio}
    Preencher campo       ${selectSaidaRelatorio}           Impressora

Clicar no botão Imprimir 
    Click no Item  ${btnImprimir}