##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/2-ASSISTENCIAL/M_RASTREAR_AMOSTRA_PAGE.robot

*** Keywords ***
Consulta de Exames Solicitados|${Bancada}||${DataInicial}|
    Wait Until Element Is Visible                ${CampoBancada}                               180
    Preencher campo                              ${CampoBancada}                               ${Bancada}
    Send Keys                                    enter
    Click no Item                                ${AbaEstatisticas}
    Clicar no Campo e Preencher Informacao       ${CampoDataInicial}    ${CampoDataInicial}    ${DataInicial}
    Click no Item                                ${BotaoPesquisa}


Validacao do Campo|${CampoAValidar}|
    Validar Elemento Pelo Titulo                 ${CampoAValidar}






