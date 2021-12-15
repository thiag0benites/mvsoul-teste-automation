##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Alteração de Atendimento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_TROPLA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Dados da Ocorrencia |${UnidInternacao}| |${DtInicial}| |${DtFinal}| |${Leito}| |${Ocorrencia}| |${Descricao}|
    Wait Until Element Is Visible    ${BotaoLovUnidInternacao}    180
    Selecionar Item Na Lista    ${BotaoLovUnidInternacao}    ${UnidInternacao}    ${UnidInternacao}
    Preencher Campo    ${CampoDtInicial}    ${DtInicial}
    Preencher Campo    ${CampoDtFinal}    ${DtFinal}
    Clicar Item e Selecionar da Lista    ${CampoLeito}    ${BotaoLovEdit}    ${Leito}    ${Leito}
    Clicar Item e Selecionar da Lista    ${CampoOcorrencia}    ${BotaoLovEdit}    ${Ocorrencia}    ${Ocorrencia}
    Preencher Campo    ${CampoDescricao}    ${Descricao}

Imprimir Relatorio Ocorrencia de Plantao
    Click no Item    ${BotaoImprimir}
    Sleep    2
    Switch Window    NEW
    Sleep    5
    Capture Page Screenshot