##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Consulta de Agenda - Centro Cirúrgico / Cirurgião
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_CONSULTA_PAC_AGENDA_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar Paciente |${CdPaciente}|
    Wait Until Element Is Visible    ${AbaPacienteRecepcao}             180
    Click no Item                    ${AbaPacienteRecepcao}   
    Preencher Campo                  ${CampoCdPaciente}                 ${CdPaciente}
    Click no Item                    ${BotaoPesquisar} 

Validar Dados Paciente |${Paciente}| |${MaePaciente}| |${NascimentoPaciente}|
    Validar Elemento Pelo Titulo     ${Paciente}
    Validar Elemento Pelo Titulo     ${MaePaciente}
    Validar Elemento Pelo Titulo     ${NascimentoPaciente}

Validar Detalhes |${Endereco}| |${Bairro}| |${Cidade}| |${Telefone}| |${Celular}|     
    Click no Item                    ${BotaoDetalhes}  
    Validar Elemento Pelo Titulo     ${Endereco}
    Validar Elemento Pelo Titulo     ${Bairro}
    Validar Elemento Pelo Titulo     ${Cidade}
    Validar Elemento Pelo Titulo     ${Telefone}
    Validar Elemento Pelo Titulo     ${Celular}


