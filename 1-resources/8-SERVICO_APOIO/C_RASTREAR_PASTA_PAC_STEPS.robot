##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Protocolos de Entrada de Documentos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/C_RASTREAR_PASTA_PAC_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Same |${SAME}|
    Preencher Campo    ${CampoSame}    ${SAME}
    Click no Item    ${BotaoAcessar}
    Sleep    3

Preencher Paciente |${Paciente}|
    Preencher Campo    ${CampoPaciente}    ${Paciente}
    Click no Item    ${BotaoExecutar}

Validar Consultas |${DescSame}| |${Armario}| |${TipOrigem}|
    Validar Elemento Pelo Titulo    ${DescSame}
    Validar Elemento Pelo Titulo    ${Armario}
    Validar Elemento Pelo Titulo    ${TipOrigem}
