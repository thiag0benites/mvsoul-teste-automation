##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/C_LOTE_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher o campo |${lote}|
    Click no Item                               ${campoLote}
    Sleep   2
    Preencher Campo                             ${campoLoteInput}                    ${lote}

Validar Resultado da Pesquisa da tela Consulta de Lancamento contabil |${dadoConsulta}|
    Validar Elemento Pelo Titulo            ${dadoConsulta} 

Clicar no botao Executar 
    Click no Item            ${btnExecute} 
    Sleep              30   