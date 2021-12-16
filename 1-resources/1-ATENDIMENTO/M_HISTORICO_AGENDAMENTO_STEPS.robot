##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Histórico de Agendamentos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_HISTORICO_AGENDAMENTO_PAGE.robot

*** Variable ***

*** Keywords ***
Entrada de Datas |${DtInicio}| |${DtFim}|
    Preencher campo                        ${DtIni}       ${DtInicio}
    Preencher campo                        ${DtF}         ${DtFim} 
Click Botao Pesquisar
    Click no Item                    ${BtnPesquisar}
        
Validar Dados Pos Pesquisa |${Movimenta}| |${Paciente}| |${UserResponsavel}| |${DataHora}|
    Validar Elemento Pelo Titulo     ${Movimenta}
    Validar Elemento Pelo Titulo     ${Paciente}
    Validar Elemento Pelo Titulo     ${UserResponsavel}
    Validar Elemento Pelo Titulo     ${DataHora}


