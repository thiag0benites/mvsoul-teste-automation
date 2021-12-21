##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/1-ATENDIMENTO/M_CAD_OBS_PAGE.robot

*** Keywords ***
Avisos do paciente da cirurgia |${Equipe}||${Sala}||${Data}||${Obs}||${Tempo}|
    Clicar no Campo e Preencher Informacao    ${CampoEquipe}    ${CampoEquipe}    ${Equipe}
    Clicar no Campo e Preencher Informacao    ${CampoSala}    ${CampoSala}    ${Sala}
    Clicar no Campo e Preencher Informacao    ${CampoData}    ${CampoData}    ${Data}
    Click no Item    ${BtnObs}
    Clicar no Campo e Preencher Informacao    ${CampoObs}    ${CampoObs}    ${Obs}
    Click no Item    ${BtnSair}
    #Validação
    Wait Until Element Is Visible    ${Style}    ${Tempo}
