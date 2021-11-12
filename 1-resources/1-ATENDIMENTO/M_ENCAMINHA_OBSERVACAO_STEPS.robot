##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Encaminhamento de Pacientes para Observação
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_ENCAMINHA_OBSERVACAO_PAGE.robot
Resource          ../../2-pages/1-ATENDIMENTO/ATE_COMPL_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Atendimento |${Atendimento}|
    Preencher Campo                         ${CampoAtendimento}             ${Atendimento}
    Send Keys                               Enter
    Click no Item                           ${BotaoOk}

Validar Dados Do Paciente |${CdPaciente}| |${Paciente}| |${CID}|
    Validar Elemento Pelo Titulo            ${CdPaciente}
    Validar Elemento Pelo Titulo            ${Paciente}
    Validar Elemento Pelo Titulo            ${CID}

Selecionar Leito
    Click no Item                           ${BotaoLovLeito}                
    Click no Item                           ${BotaoOkLista}

Validar Encaminhar Paciente
    Click no Item                           ${BotaoConfirmar}
    Click no Item                           ${BotaoOk}
