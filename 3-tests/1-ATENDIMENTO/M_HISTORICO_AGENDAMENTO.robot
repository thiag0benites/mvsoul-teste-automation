#################################################################################################################################################################
# Autor: Fernando Lima
# Decrição: Teste da tela Histórico de Agendamentos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_HISTORICO_AGENDAMENTO.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_HISTORICO_AGENDAMENTO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_HISTORICO_AGENDAMENTO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_HISTORICO_AGENDAMENTO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/M_HISTORICO_AGENDAMENTO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_historico_agendamento
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMHISTORICOAGENDAMENTO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMHISTORICOAGENDAMENTO-001:Fluxo Principal" -d ./5-results/SCR1AMHISTORICOAGENDAMENTO-001 "3-tests/1-ATENDIMENTO/M_HISTORICO_AGENDAMENTO.robot"
# robot -v browser:firefox -t "SCR1AMHISTORICOAGENDAMENTO-001:Fluxo Principal" -d ./5-results/SCR1AMHISTORICOAGENDAMENTO-001 "3-tests/1-ATENDIMENTO/M_HISTORICO_AGENDAMENTO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMHISTORICOAGENDAMENTO-001"
    Acessa a Tela Pela Busca |M_HISTORICO_AGENDAMENTO||Histórico de Agendamentos| @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Entrada de Datas |${dados}[DtInicio]| |${dados}[DtFim]| 
    Click Botao Pesquisar
    Validar Dados Pos Pesquisa |${dados}[Movimenta]| |${dados}[Paciente]| |${dados}[UserResponsavel]| |${dados}[DataHora]|
    
