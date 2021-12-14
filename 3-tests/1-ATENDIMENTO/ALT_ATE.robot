#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Alteracao de Tipo de Atendimento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\ALT_ATE.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\ALT_ATE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\ALT_ATE.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\ALT_ATE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/ALT_ATE_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          alt_ate
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AALTATE-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AALTATE-001:Fluxo Principal" -d ./5-results/SCR1AALTATE-001 "3-tests/1-ATENDIMENTO/ALT_ATE.robot"
# robot -v browser:firefox -t "SCR1AALTATE-001:Fluxo Principal" -d ./5-results/SCR1AALTATE-001 "3-tests/1-ATENDIMENTO/ALT_ATE.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AALTATE-001"
    Acessar a tela "Atendimento>Urgência e Emergência>Atendimento>Alteração do Tipo de Atendimento"@nprint @las
    Validar Acesso a Tela |Alteração do Tipo|
    Preencher Atendimento |${dados}[Atendimento]|
    Escolher Novo Tipo |${dados}[Origem]|
    Confirmar Alteracao |${dados}[MensagemAlerta]| |${dados}[MensagemSucesso]|