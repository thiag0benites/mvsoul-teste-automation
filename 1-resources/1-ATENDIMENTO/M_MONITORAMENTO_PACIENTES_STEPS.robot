##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Diagnóstico de Atendimento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_MONITORAMENTO_PACIENTES_PAGE.robot

*** Variable ***

*** Keywords ***
Filtrar por Unidade de Atendimento |${UnidAtendimento}|
    Wait Until Element Is Visible        ${CampoCdUnidAtendimento}     180   
    Clicar Item e Selecionar da Lista    ${CampoCdUnidAtendimento}     ${BotaoLovCdUnidAtend}         ${UnidAtendimento}          ${UnidAtendimento}
    Click no Item                        ${BotaoFiltrar}  

Validar Resultado do Filtro |${Paciente}| |${Atendimento}| |${Especialidade}|
    Validar Elemento Pelo Titulo         ${Paciente}
    Validar Elemento Pelo Titulo         ${Atendimento}
    Validar Elemento Pelo Titulo         ${Especialidade}
    
