#################################################################################################################################################################
# Autor: Fernando Lima
# Decrição: Teste da tela Consulta de Consulta de Escalas
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_ESCALAS.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_ESCALAS.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_ESCALAS.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_ESCALAS.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/C_ESCALAS_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          c_escalas
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1ACESCALAS-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1ACESCALAS-001:Fluxo Principal" -d ./5-results/SCR1ACESCALAS-001 "3-tests/1-ATENDIMENTO/C_ESCALAS.robot"
# robot -v browser:firefox -t "SCR1ACESCALAS-001:Fluxo Principal" -d ./5-results/SCR1ACESCALAS-001 "3-tests/1-ATENDIMENTO/C_ESCALAS.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1ACESCALAS-001"
    Acessa a Tela Pela Busca |c_escalas||Consulta de Escalas| @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Click Botao Pesquisar
    Validar Dados Pos Pesquisa |${dados}[NomePresEscala]| |${dados}[DiaSemana]| |${dados}[NomeRecurso]|
    Clicar Aba Itens Agendamento
    Validadar Dados Aba Itens Agendamento|${dados}[ItenAgendamento]| |${dados}[ItenAgendamento2]| |${dados}[ItenAgendamentoNumero]|
