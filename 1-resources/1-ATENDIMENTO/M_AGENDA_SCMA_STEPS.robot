##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/1-ATENDIMENTO/M_AGENDA_SCMA_PAGE.robot

*** Keywords ***
Aperte o botao pesquisa na tela principal
    Preencher Campo                  ${CampoItem}                    2
    Click no Item                    ${BtnPesquisar}

Selecione o atendimento