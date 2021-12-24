#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Gerenciamento Centralizado de    Leitos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_CENTRAL_LEITOS.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_CENTRAL_LEITOS.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_CENTRAL_LEITOS.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_CENTRAL_LEITOS.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/M_CENTRAL_LEITOS_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_central_leitos
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMCENTRALLEITOS-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMCENTRALLEITOS-001:Fluxo Principal" -d ./5-results/SCR1AMCENTRALLEITOS-001 "3-tests/1-ATENDIMENTO/M_CENTRAL_LEITOS.robot"
# robot -v browser:firefox -t "SCR1AMCENTRALLEITOS-001:Fluxo Principal" -d ./5-results/SCR1AMCENTRALLEITOS-001 "3-tests/1-ATENDIMENTO/M_CENTRAL_LEITOS.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMCENTRALLEITOS-001"
    Acessar a tela "Atendimento>Internação>Atendimento>Leitos - Gestão Centralizada"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Realizar Consulta por |Solicitada| |${dados}[DtInicial]| |${dados}[DtFinal]|
    Realizar Consulta por |Atendida| |${dados}[DtInicial]| |${dados}[DtFinal]|
