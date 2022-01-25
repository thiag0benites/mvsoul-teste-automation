#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela C_COTA
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/SCR8SCCEP-001 "3-tests/8-SERVICO_APOIO/C_COTA.robot"
# firefox: robot -v browser:firefox -d ./5-results/SCR8SCCEP-001 "3-tests/8-SERVICO_APOIO/C_COTA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/SCR8SCCEP-001 "3-tests/8-SERVICO_APOIO/C_COTA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR8SCCEP-001 "3-tests/8-SERVICO_APOIO/C_COTA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/C_COTA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          C_COTA
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SCCOTA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SCCOTA-001:Fluxo Principal" -d ./5-results/SCR8SCCOTA-001 "3-tests/8-SERVICO_APOIO/C_COTA.robot"
# robot -v browser:firefox -t "SCR8SCCOTA-001-001:Fluxo Principal" -d ./5-results/SCR8SCCOTA-001 "3-tests/8-SERVICO_APOIO/C_COTA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SCCOTA-001"
    Acessar a tela "Serviços de Apoio>Manutenção>Consultas>Cotas>Competência"@nprint @las
    Preencher Campo Competencia|${dados}[competencia]|
    Captura codigo|${suite}|${dados}[id]|
