#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Consumo do Atendimento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\C_PRODATEND.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\C_PRODATEND.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\C_PRODATEND.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\C_PRODATEND.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/C_PRODATEND_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          c_prodatend
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MCPRODATEND-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MCPRODATEND-001:Fluxo Principal" -d ./5-results/SCR4MCPRODATEND-001 "3-tests/4-MATERIAIS/C_PRODATEND.robot"
# robot -v browser:firefox -t "SCR4MCPRODATEND-001:Fluxo Principal" -d ./5-results/SCR4MCPRODATEND-001 "3-tests/4-MATERIAIS/C_PRODATEND.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MCPRODATEND-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Consultas>Consumos>Consumo do Atendimento"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Selecionar Paciente |${dados}[TelaConsultaPac]|
    Realizar Consulta de Consumo
    Validar Consulta de Consumo |${dados}[Paciente]| |${dados}[UnidInternacao]| |${dados}[Setor]| |${dados}[Produto]|