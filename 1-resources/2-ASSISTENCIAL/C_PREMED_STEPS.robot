##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Consulta das Prescrições Médicas/Enfermagem
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/C_PREMED_PAGE.robot

*** Variable ***

*** Keywords ***
Consulta Prescricoes Medicas |${Paciente}|
    Selecionar Item Na Lista    ${BotaoLovAtendimento}    ${Paciente}    ${Paciente}
    Wait Until Element Is Visible    xpath=//div[@id="dspNmPaciente"]/span[@title="${Paciente}"]      60
    Click Elemento por titulo    Executar Consulta

Validar Consulta Realizada |${Medico}| |${UnidInternacao}| |${Data}| |${Tipo}| |${Esquema}| |${ItemPrescricao}|
    Validar Elemento Pelo Titulo    ${Medico}
    Validar Elemento Pelo Titulo    ${UnidInternacao}
    Validar Elemento Pelo Titulo    ${Data}
    Validar Elemento Pelo Titulo    ${Tipo}
    Validar Elemento Pelo Titulo    ${Esquema}
    Validar Elemento Pelo Titulo    ${ItemPrescricao}
