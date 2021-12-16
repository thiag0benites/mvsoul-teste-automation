##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Consulta de Agenda - Centro Cirúrgico / Cirurgião
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/C_AGENDA_CENCIR_PAGE.robot

*** Variable ***

*** Keywords ***
Realizar Consulta por Centro Cirurgico |${CentroCirurgico}| |${Data}|
    Selecionar Item Na Lista    ${BotaoLovCentroCirurgico}    ${CentroCirurgico}    ${CentroCirurgico}
    Preencher Campo    ${CampoData}    ${Data}
    Send Keys    tab

Validar Agendamentos Selecionados |${Paciente1}| |${Paciente2}|
    Validar Elemento Pelo Titulo    ${Paciente1}
    Validar Elemento Pelo Titulo    ${Paciente2}

Validar Aba Detalhes do Aviso |${Sala}| |${Prestador}|
    Validar Elemento Pelo Titulo    ${Sala}
    Validar Elemento Pelo Titulo    ${Prestador}

Validar Aba Cirurgia |${Cirurgia}|
    Click no Item    ${AbaCirurgia}
    Validar Elemento Pelo Titulo    ${Cirurgia}

Validar Aba Equipamentos |${Equipamento1}| |${Equipamento2}|
    Click no Item    ${AbaEquipamentos}
    Validar Elemento Pelo Titulo    ${Equipamento1}
    Validar Elemento Pelo Titulo    ${Equipamento2}

Validar Aba Tipo de Anestesia |${Anestesia}|
    Click no Item    ${AbaTipoAnestesia}
    Validar Elemento Pelo Titulo    ${Anestesia}
