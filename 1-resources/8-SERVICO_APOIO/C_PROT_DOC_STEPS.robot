##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Consulta de Movimentações
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/C_PROT_DOC_PAGE.robot

*** Variable ***

*** Keywords ***
Consultar Movimentacoes
    Click no Item    ${BotaoConsultar}

Validar Consulta de Movimentacoes |${Setor}| |${CdAtendimento}| |${Paciente}|
    Validar Elemento Pelo Titulo    ${Setor}
    Validar Elemento Pelo Titulo    ${CdAtendimento}
    Validar Elemento Pelo Titulo    ${Paciente}
