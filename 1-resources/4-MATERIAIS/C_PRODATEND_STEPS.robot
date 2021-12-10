##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Consumo do Atendimento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/C_PRODATEND_PAGE.robot
Resource    ../2-ASSISTENCIAL/M_USUUNID_STEPS.robot

*** Variable ***

*** Keywords ***
Selecionar Paciente |${TelaConsultaPac}|
    Click no Item                    ${BotaoLovPaciente} 
    Validar Acesso a Tela |${TelaConsultaPac}|
    Marcar Checkbox |${CbPacInternacao}|
    Click Elemento por titulo        Executar Consulta
    Sleep  5
    Click no Item                    ${BotaoConfirmar}

Realizar Consulta de Consumo
    Click Elemento por titulo        Executar Consulta

Validar Consulta de Consumo |${Paciente}| |${UnidInternacao}| |${Setor}| |${Produto}|
    Validar Elemento Pelo Titulo     ${Paciente}
    Validar Elemento Pelo Titulo     ${UnidInternacao}
    Validar Elemento Pelo Titulo     ${Setor}
    Validar Elemento Pelo Titulo     ${Produto}
    
    


