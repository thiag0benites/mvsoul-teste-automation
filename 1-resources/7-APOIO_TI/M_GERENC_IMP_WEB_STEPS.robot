##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: M_GERENC_IMP_WEB_STEPS
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/7-APOIO_TI/M_GERENC_IMP_WEB_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher o campo Data Inicial e Data final
    Preencher Campo                             ${dataInicial}                    01/11/2021
    Preencher Campo                             ${dataFinal}                      11/11/2021

Clicar no botao Executar Filtro
    Click no Item           ${btnExecutarFiltro}

Validar Resultado da Pesquisa 
    Validar Elemento Pelo Titulo            ETIQUETA DE AMOSTRA

Clicar na aba Gerenciamento
    Click no Item           ${abaGerenciamento}