##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_PRODUTO_FRACIONAMENTO_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher o campo |${numEstoque}|
    Preencher campo                      ${CampoEstoque}                  ${numEstoque}

Preencher os campos |${codProduto}|,|${lote}|,|${quantidade}|,|${unidade}|,|${unidadeFracionada}|
    Preencher campo                      ${CampoCodProduto}                  ${codProduto}
    Sleep           2
    Preencher campo                      ${CampoLote}                        ${lote}
    Sleep           2
    Preencher campo                      ${CampoQuantidade}                  ${quantidade}
    Sleep           2
    Preencher campo                      ${CampoUnidade}                     ${unidade}
    Sleep           2
    Preencher campo                      ${CampoUnidFracionado}              ${unidadeFracionada}
    Sleep           2
