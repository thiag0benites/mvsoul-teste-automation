##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/2-ASSISTENCIAL/M_RASTREAR_AMOSTRA_PAGE.robot

*** Keywords ***
Consulta de Exames Solicitados     #|${Data}|
    Wait Until Element Is Visible                ${CampoBancada}                               180
    Preencher campo                              ${CampoBancada}                               14
    Send Keys                                    enter
    Click no Item                                ${AbaEstatisticas}
    Clicar no Campo e Preencher Informacao       ${CampoDataInicial}    ${CampoDataInicial}    01/12/2021
    Click no Item                                ${BotaoPesquisa}


Validacao do Campo
    Validar Elemento Pelo Titulo                  09/12/2021 Quinta-feira






