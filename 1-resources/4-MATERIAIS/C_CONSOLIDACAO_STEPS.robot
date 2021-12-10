##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/4-MATERIAIS/C_CONSOLIDACAO_PAGE.robot

*** Keywords ***
Preencher parametros de pesquisa 
  

    Clicar no Campo e Preencher Informacao      ${CampoDataInicial}          ${CampoDataInicial}          01012021
    Clicar no Campo e Preencher Informacao      ${CampoProduto}              ${CampoProduto}              7903
    
    Click no Item                               ${BtnExePesq}
    ${value}    Get Element Attribute           xpath=//fieldset[@id="frames4"]/div/div/div[@id="dsProduto"]/input    title
  
