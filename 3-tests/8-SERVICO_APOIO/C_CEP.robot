#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela C_CEP
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/SCR8SCCEP-001 "3-tests/8-SERVICO_APOIO/C_CEP.robot"
# firefox: robot -v browser:firefox -d ./5-results/SCR8SCCEP-001 "3-tests/8-SERVICO_APOIO/C_CEP.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/SCR8SCCEP-001 "3-tests/8-SERVICO_APOIO/C_CEP.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR8SCCEP-001 "3-tests/8-SERVICO_APOIO/C_CEP.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/C_CEP_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          C_CEP
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SCCEP-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SCCEP-001:Fluxo Principal" -d ./5-results/SCR8SCCEP-001 "3-tests/8-SERVICO_APOIO/C_CEP.robot"
# robot -v browser:firefox -t "SCR8SCCEP-001-001:Fluxo Principal" -d ./5-results/SCR8SCCEP-001 "3-tests/8-SERVICO_APOIO/C_CEP.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SCCEP-001"
    Acessar |${dados}[tela]|@nprint @las
    Preencher Campos UF|${dados}[UF]|, Localidade|${dados}[localidade]|, Bairro|${dados}[bairro]|, Logradouro|${dados}[logradouro]|
    Captura codigo|${suite}|${dados}[id]|
