##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Setores de Exames
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_SETEXA_PAGE.robot
Resource    ../4-MATERIAIS/M_ENTRADA_NOVA_STEPS.robot

*** Variable ***

*** Keywords ***
Preencher Campos Obrigatorios |${Nome}| |${TpStExame}| |${NrAtual}| |${CentroCusto}| |${Prestador}|
    Preencher Campo                     ${CampoNome}                 ${Nome}
    Selecionar Item Na Lista            ${BotaoLovTpStExame}         ${TpStExame}                        ${TpStExame}
    Preencher Campo                     ${CampoNrAtual}              ${NrAtual}
    Selecionar Item Na Lista            ${BotaoLovCentroCusto}       ${CentroCusto}                      ${CentroCusto}
    Selecionar Item Na Lista            ${BotaoLovPrestador}         ${Prestador}                        ${Prestador}

Validar Preenchimento dos Campos |${Nome}| |${TpStExame}| |${NrAtual}| |${CentroCusto}| |${Prestador}|
    Validar Elemento Pelo Titulo        ${Nome}
    Validar Elemento Pelo Titulo        ${TpStExame}
    Validar Elemento Pelo Titulo        ${NrAtual}
    Validar Elemento Pelo Titulo        ${CentroCusto}
    Validar Elemento Pelo Titulo        ${Prestador}