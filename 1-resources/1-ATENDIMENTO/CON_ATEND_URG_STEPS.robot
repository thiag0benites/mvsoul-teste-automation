##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Consulta de pacientes atendidos na Urgência/Emergência (Std)
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/CON_ATEND_URG_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Campo Data |${DataAtendimento}|
    Preencher Campo    ${Calendario}    ${DataAtendimento}

Click Botao Pesquisar
    Click no Item    ${BotaoPesquisar}

Validar Dados Pos Pesquisa |${HoraAtendimento}| |${NomePac}| |${Procedimento}| |${OrigemAtend}|
    Validar Elemento Pelo Titulo    ${HoraAtendimento}
    Validar Elemento Pelo Titulo    ${NomePac}
    Validar Elemento Pelo Titulo    ${Procedimento}
    Validar Elemento Pelo Titulo    ${OrigemAtend}
