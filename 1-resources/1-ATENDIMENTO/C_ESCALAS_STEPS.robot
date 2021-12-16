##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Consulta de Escalas
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/C_ESCALAS_PAGE.robot

*** Variable ***

*** Keywords ***
Click Botao Pesquisar
    Click no Item    ${BtnPesquisar}

Validar Dados Pos Pesquisa |${NomePresEscala}| |${DiaSemana}| |${NomeRecurso}|
    Validar Elemento Pelo Titulo    ${NomePresEscala}
    Validar Elemento Pelo Titulo    ${DiaSemana}
    Validar Elemento Pelo Titulo    ${NomeRecurso}

Clicar Aba Itens Agendamento
    Click Link    ${ItemAgenda}

Validadar Dados Aba Itens Agendamento|${ItenAgendamento}| |${ItenAgendamento2}| |${ItenAgendamentoNumero}|
    Validar Elemento Pelo Titulo    ${ItenAgendamento}
    Validar Elemento Pelo Titulo    ${ItenAgendamento2}
    Validar Elemento Pelo Titulo    ${ItenAgendamentoNumero}
