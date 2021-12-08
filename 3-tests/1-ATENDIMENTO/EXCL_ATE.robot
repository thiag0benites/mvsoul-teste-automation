#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela EXCL_ATE
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/EXCL_ATE "3-tests/1-ATENDIMENTO/EXCL_ATE.robot"
# firefox: robot -v browser:firefox -d ./5-results/EXCL_ATE "3-tests/1-ATENDIMENTO/EXCL_ATE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/EXCL_ATE "3-tests/1-ATENDIMENTO/EXCL_ATE.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/EXCL_ATE "3-tests/1-ATENDIMENTO/EXCL_ATE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/EXCL_ATE_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          EXCL_ATE
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SRC1AEXCLATE-001:Fluxo principal
# robot -v browser:chrome -t "SRC1AEXCLATE-001:Fluxo principal" -d ./5-results/EXCL_ATE_SMF_10357 "3-tests/1-ATENDIMENTO/EXCL_ATE.robot"
# robot -v browser:firefox -t "SRC1AEXCLATE-001:Fluxo principal" -d ./5-results/EXCL_ATE_SMF_10357 "3-tests/1-ATENDIMENTO/EXCL_ATE.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SRC1AEXCLATE-001"
    Acessar a tela "Atendimento>Internação>Atendimento>Exclusão de Atendimento"@nprint @las
    Usuario devera preencher os campos |${dados}[numAtend]|,|${dados}[motivo]|
    Clicar no botao Excluir Atendimento
    Clicar no botao Sim