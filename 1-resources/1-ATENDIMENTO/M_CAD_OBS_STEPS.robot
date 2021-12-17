##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/1-ATENDIMENTO/M_CAD_OBS_PAGE.robot

*** Keywords ***
Avisos do paciente da cirurgia
    Wait Until Element Is Visible             ${CampoEquipe}
    #Preencher campo equipe: 3
    Clicar no Campo e Preencher Informacao    ${CampoEquipe}    ${CampoEquipe}    3
    #Preencher campo sala: 13
    Clicar no Campo e Preencher Informacao    ${CampoSala}      ${CampoSala}      13
    #Preencher campo Data: 30092021
    Clicar no Campo e Preencher Informacao    ${CampoData}      ${CampoData}      30102021
    #Clicar botão OBSERVACAO
    Click no Item                             ${BtnObs}            
    #Preencher campo observação :Testes
    Clicar no Campo e Preencher Informacao    ${CampoObs}       ${CampoObs}       TESTES    
    #Clicar no botao FECHAR
    Click no Item                             ${BtnSair}
    #Clicar no botao salvar
    Click no Item                             ${BtnSalvar}            
    Sleep    20
