#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Protocolos de Entrada de Documentos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\RASTREARPASTAPAC.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\RASTREARPASTAPAC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\RASTREARPASTAPAC.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\RASTREARPASTAPAC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/C_RASTREAR_PASTA_PAC_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          C_RASTREAR_PASTA_PAC
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SRASTREARPASTAPAC-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SRASTREARPASTAPAC-001:Fluxo Principal" -d ./5-results/SCR8SRASTREARPASTAPAC-001 "3-tests/8-SERVICO_APOIO/C_RASTREAR_PASTA_PAC.robot"
# robot -v browser:firefox -t "SCR8SRASTREARPASTAPAC-001:Fluxo Principal" -d ./5-results/SCR8SRASTREARPASTAPAC-001 "3-tests/8-SERVICO_APOIO/C_RASTREAR_PASTA_PAC.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SRASTREARPASTAPAC-001"
    Acessar a tela "Serviços de Apoio>Serviço Arquivo Médico>Consultas>Pastas do Paciente"@nprint @las
    Preencher Same |${dados}[SAME]|
    Validar Acesso a Tela |Histórico das Pastas do Paciente|
    Preencher Paciente |${dados}[Paciente]|
    Validar Consultas |${dados}[DescSame]| |${dados}[Armario]| |${dados}[TipOrigem]|