##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Espera para Coleta de Materiais
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_ESPERA_COLETA_PAGE.robot

*** Variable ***

*** Keywords ***
Clicar no Botao Filtro
    Click no Item    ${BotaoFiltro}

Preencher Campo Data |${DtInicial}| |${DtFinal}|
    Preencher campo    ${CampoDtInicial}    ${DtInicial}
    Preencher campo    ${CampoDtFinal}    ${DtFinal}

Clicar no Botao Pesquisar
    Click no item    ${BotaoPesquisar}

Validar Dados de Campos |${NomePaciente}| |${NomeExame}| |${Idade}|
    Validar Elemento Pelo Titulo    ${NomePaciente}
    Validar Elemento Pelo Titulo    ${NomeExame}
    Validar Elemento Pelo Titulo    ${Idade}