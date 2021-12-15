##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Movimentação Painel Centro Cirúrgico
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_MOVIMENTACAO_PAINEL_FSCC_PAGE.robot

*** Variable ***

*** Keywords ***
Entrada de Datas |${DtInicio}| |${DtFim}|
    Input Text                        ${DtInicio}     ${DtInicio}
    Input Text                        ${DtFim}         ${DtFim} 
Click Botao Pesquisar
    Click no Item                    ${BtnPesquisar}
        
Validar Dados Pos Pesquisa |${NomePresEscala}| |${DiaSemana}| |${NomeRecurso}|
    Validar Elemento Pelo Titulo     ${NomePresEscala}
    Validar Elemento Pelo Titulo     ${DiaSemana}
    Validar Elemento Pelo Titulo     ${NomeRecurso}

Clicar Aba Itens Agendamento
    Click Link                       ${ItemAgenda} 

Validadar Dados Aba Itens Agendamento|${ItenAgendamento}| |${ItenAgendamento2}| |${ItenAgendamentoNumero}|
    Validar Elemento Pelo Titulo     ${ItenAgendamento}
    Validar Elemento Pelo Titulo     ${ItenAgendamento2}
    Validar Elemento Pelo Titulo     ${ItenAgendamentoNumero}


