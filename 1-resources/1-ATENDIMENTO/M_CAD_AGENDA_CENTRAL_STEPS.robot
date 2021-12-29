##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Cadastro de Agendas
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_CAD_AGENDA_CENTRAL_PAGE.robot
Resource    ../2-ASSISTENCIAL/O_TRANSF_CC_RPA_STEPS.robot

*** Variable ***

*** Keywords ***
Pesquisar Agenda Cadastrada |${CdAgenda}|
    Click Elemento por titulo            Procurar
    Preencher Campo                      ${CampoCdAgenda}       ${CdAgenda}
    Click Elemento por titulo            Executar Consulta

Validar Agenda |${Prestador}| |${UnidInternacao}| |${Setor}| 
    Validar Elemento Pelo Titulo         ${Prestador}
    Validar Elemento Pelo Titulo         ${UnidInternacao}
    Validar Elemento Pelo Titulo         ${Setor}

Cadastrar Item de Agendamento |${ItemAgendamento}|
    Click no Item                        ${AbaItensAgendamento}
    Selecionar Item Na Lista             ${BotaoLovItemAgendamento}        ${ItemAgendamento}        ${ItemAgendamento}

### Keyword para retornar massa de dados para status inicial do teste ###
Excluir Item Agendamento
    Click Elemento por titulo            Apagar