##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/1-ATENDIMENTO/M_RECEPCAO_AGENDA_PAGE.robot

*** Keywords ***
Parametros de pesquisa recepção do paciente |${Paciente}|
    Clicar no Campo e Preencher Informacao    ${CampoPaciente}    ${CampoPaciente}    ${Paciente}
    Click no Item    ${BtnExePesq}
    Click no Item    ${Checkbox}
    Click no Item    ${BtnDetalhes}
    Should Not Be Empty    ${CampoAgenda}
