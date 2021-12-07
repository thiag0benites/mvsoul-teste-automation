##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Produtos do Estoque
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/C_ACOM_PROD_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar Compras |${Produto}| |${Estoque}| |${DtInicial}| |${DtFinal}|
    Wait Until Element Is Visible       ${BotaoLovProduto}               120 
    Selecionar Item Na Lista            ${BotaoLovProduto}               ${Produto}         ${Produto}
    Selecionar Item Na Lista            ${BotaoLovEstoque}               ${Estoque}         ${Estoque}
    Click no Item                       ${RadioButtonBusca}
    Preencher Campo                     ${CampoDtInicial}                ${DtInicial}
    Preencher Campo                     ${CampoDtFinal}                  ${DtFinal}
    Click no Item                       ${BotaoPesquisar} 

Validar Resultado Pesquisa |${CdSolicitacao1}| |${CdSolicitacao2}|
    Validar Elemento Pelo Titulo        ${CdSolicitacao1}
    Validar Elemento Pelo Titulo        ${CdSolicitacao2}


