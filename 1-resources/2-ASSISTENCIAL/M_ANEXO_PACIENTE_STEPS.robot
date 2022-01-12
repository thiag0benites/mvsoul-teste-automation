##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Anexo de Paciente
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_ANEXO_PACIENTE_PAGE.robot

*** Variable ***

*** Keywords ***
Acessar Paciente e Matricula |${Paciente}| |${Matricula}|
    Preencher Campo    ${CampoPaciente}    ${Paciente}
    Preencher Campo    ${CampoSame}    ${Matricula}

Consultar, Validar e Exibir PDF |${Objeto}|
    Click no Item    ${BotaoConsultar}
    Validar Elemento Pelo Titulo    ${Objeto}
    Click no Item    ${BotaoPDF}

Registrar Exibicao PDF
    Sleep    3
    Switch Window    NEW
    Sleep    3
    Capture Page Screenshot
