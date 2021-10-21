##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Digitação dos Produtos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/O_CONTAGEM_PAGE.robot

*** Variable ***

*** Keywords ***
Validar Acesso a Tela
    Wait Until Element Is Visible           ${TituloPrincipal}              100
    Element Should Contain                  ${TituloPrincipal}              Contagem Aberta

Realizar Consulta Pelo Codigo
    Preencher Campo                         ${CampoCodigo}                  9302
    Click Element                           ${BotaoExecConsulta} 
    Validar Preenchimento dos Campos        69          FARMACIA SATELITE EMERGENCIA            04/09/2019          Somente Alguns Produtos

Validar Preenchimento dos Campos
    [Arguments]        ${Estoque}       ${DesEstoque}          ${DataContagem}          ${TpContagem}
    Wait Until Element Is Visible           xpath=//input[@title="${Estoque}"]                  20
    Element Should Be Visible               xpath=//input[@title="${Estoque}"]
    Wait Until Element Is Visible           xpath=//input[@title="${DesEstoque}"]               20
    Element Should Be Visible               xpath=//input[@title="${DesEstoque}"]
    Wait Until Element Is Visible           xpath=//input[@title="${DataContagem}"]             20
    Element Should Be Visible               xpath=//input[@title="${DataContagem}"]
    Wait Until Element Is Visible           xpath=//input[@title="${TpContagem}"]               20
    Element Should Be Visible               xpath=//input[@title="${TpContagem}"]

Inserir Produto
    Wait Until Element Is Visible           ${BotaoAdicionar}              20
    Click Element                           ${BotaoAdicionar}
    Wait Until Element Is Visible           ${BotaoLovProduto}             20
    Click Element                           ${BotaoLovProduto}
    Selecionar Produto Na Lista             adalat                         ADALAT OROS 30MG COMP LIB PROL-NIFEDIPINO

Selecionar Produto Na Lista         
    [Arguments]                             ${Produto}                     ${ItemLista}   
    Wait Until Element Is Visible           ${CampoFiltro}                 20
    Preencher Campo                         ${CampoFiltro}                 %${Produto}
    Wait Until Element Is Visible           ${BotaoFiltrar}                20
    Click Element                           ${BotaoFiltrar}
    Wait Until Element Is Visible           xpath=//div[@title="${ItemLista}"]                20
    Click Element                           xpath=//div[@title="${ItemLista}"]
    Click Element                           ${BotaoOk}





