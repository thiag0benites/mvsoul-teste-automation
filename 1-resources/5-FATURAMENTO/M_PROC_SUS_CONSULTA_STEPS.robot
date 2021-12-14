##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Consulta de procedimento SUS
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_PROC_SUS_CONSULTA_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar por procedimento
    Click no Item               ${btnPesquisar} 
    Sleep       1  
    Click no Item               ${btnExecute}

Validar Resultado da Pesquisa |${dado}| 
    Validar Elemento Pelo Titulo            ${dado} 

Clicar no proximo registro
    Click no Item    ${proxRegistroBtn}
    Sleep    1

