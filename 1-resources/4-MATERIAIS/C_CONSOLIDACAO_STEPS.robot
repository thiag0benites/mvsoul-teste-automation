##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/4-MATERIAIS/C_CONSOLIDACAO_PAGE.robot

*** Keywords ***
Preencher parametros de pesquisa |${DataInicial}||${Produto}|
    Clicar no Campo e Preencher Informacao    ${CampoDataInicial}    ${CampoDataInicial}    ${DataInicial}
    Clicar no Campo e Preencher Informacao    ${CampoProduto}    ${CampoProduto}    ${Produto}
    Click no Item                             ${BtnExePesq}
    Should not be EMPTY                       ${CampoDescricao}
    
  
