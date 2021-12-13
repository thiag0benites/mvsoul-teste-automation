#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Histórico das Movimentações da Pasta do Paciente
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\C_PAC_PRONT.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\C_PAC_PRONT.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\C_PAC_PRONT.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\C_PAC_PRONT.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/C_PAC_PRONT_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          c_pac_pront
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SCPACPRONT-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SCPACPRONT-001:Fluxo Principal" -d ./5-results/SCR8SCPACPRONT-001 "3-tests/8-SERVICO_APOIO/C_PAC_PRONT.robot"
# robot -v browser:firefox -t "SCR8SCPACPRONT-001:Fluxo Principal" -d ./5-results/SCR8SCPACPRONT-001 "3-tests/8-SERVICO_APOIO/C_PAC_PRONT.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SCPACPRONT-001"
    Acessar a tela "Serviços de Apoio>Serviço Arquivo Médico>Consultas>Histórico das Saídas de Documentos"@nprint @las
    Selecionar SAME |${dados}[SAME]|
    Validar Acesso a Tela |${dados}[NomeTela]|
    Consultar Movimentacao Pasta Paciente |${dados}[Paciente]|
    Validar Consulta Movimentacao |${dados}[Destino1]| |${dados}[Destino2]|