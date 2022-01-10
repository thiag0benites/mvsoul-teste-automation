#################################################################################################################################################################
# Autor: Fernando Lima
# Decrição: Teste da tela Consulta de Agendamento Ambulatorial Simplificado (Std)
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_AGENDAMENTO_SIMPLIFICADO.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_AGENDAMENTO_SIMPLIFICADO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_AGENDAMENTO_SIMPLIFICADO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_AGENDAMENTO_SIMPLIFICADO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/M_AGENDAMENTO_SIMPLIFICADO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_agendamento_simplificado
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMAGENDAMENTOSIMPLIFICADO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMAGENDAMENTOSIMPLIFICADO-001:Fluxo Principal" -d ./5-results/SCR1AMAGENDAMENTOSIMPLIFICADO-001 "3-tests/1-ATENDIMENTO/M_AGENDAMENTO_SIMPLIFICADO.robot"
# robot -v browser:firefox -t "SCR1AMAGENDAMENTOSIMPLIFICADO-001:Fluxo Principal" -d ./5-results/SCR1AMAGENDAMENTOSIMPLIFICADO-001 "3-tests/1-ATENDIMENTO/M_AGENDAMENTO_SIMPLIFICADO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMAGENDAMENTOSIMPLIFICADO-001"
    Acessar a tela "Atendimento>Central de Agendamento>Agendamentos>Agendamento Ambulatorial Simplificado" @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Entrada Dados e Pesquisa |${dados}[CodPrestador]|
    Validar Dados Pos Pesquisa |${dados}[DescServ]| |${dados}[DrecItemAgenda]| |${dados}[Incio]| |${dados}[PrestadorMed]| |${dados}[DescRec]|
