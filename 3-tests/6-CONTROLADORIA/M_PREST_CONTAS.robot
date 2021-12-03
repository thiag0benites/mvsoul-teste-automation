#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_PREST_CONTAS "3-tests\6-CONTROLADORIA\M_PREST_CONTAS.robot"
# chrome:         robot -v browser:firefox -d ./5-results/M_PREST_CONTAS "3-tests\6-CONTROLADORIA\M_PREST_CONTAS.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_PREST_CONTAS "3-tests\6-CONTROLADORIA\M_PREST_CONTAS.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_PREST_CONTAS "3-tests\6-CONTROLADORIA\M_PREST_CONTAS.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/6-CONTROLADORIA/M_PREST_CONTAS_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}          m_responsavel
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
