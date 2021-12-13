##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Consulta de Exames Realizados
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/C_EXA_REA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Data |${DtFiltro}|
    Preencher campo                          ${DataFiltro}         ${DtFiltro}

Clicar Botao Consultar
    Click no Item                            ${BotaoConsultar}
    
Validar Dados Solicitacao |${NomePaciente}| |${NomeExame}| |${NomeMedico}|
    Validar Elemento Pelo Titulo             ${NomePaciente}
    Validar Elemento Pelo Titulo             ${NomeExame}
    Validar Elemento Pelo Titulo             ${NomeMedico}
Clicar Botao Visualizar Laudo
    Click no Item                            ${BotaoLaudo}


