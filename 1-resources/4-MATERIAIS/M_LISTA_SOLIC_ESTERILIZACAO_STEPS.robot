##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/4-MATERIAIS/M_LISTA_SOLIC_ESTERILIZACAO_PAGE.robot

*** Keywords ***
Preencher parametros de pesquisa |${Codigo}||${TituloValidacao}|
    Clicar no Campo e Preencher Informacao    ${campoCod}        ${campoCod}    ${Codigo}
    Click no Item                             ${btnPesquisar}
    Click no Item                             ${btnOk}
    Validar Elemento Pelo Titulo              ${TituloValidacao}

