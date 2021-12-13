#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Protocolos de Cadastro de Prontuário
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_CAD_PRONT.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_CAD_PRONT.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_CAD_PRONT.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_CAD_PRONT.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/M_CAD_PRONT_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_CAD_PRONT
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SMCADPRONT-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SMCADPRONT-001:Fluxo Principal" -d ./5-results/SCR8SMCADPRONT-001 "3-tests/8-SERVICO_APOIO/M_CAD_PRONT.robot"
# robot -v browser:firefox -t "SCR8SMCADPRONT-001:Fluxo Principal" -d ./5-results/SCR8SMCADPRONT-001 "3-tests/8-SERVICO_APOIO/M_CAD_PRONT.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMCADPRONT-001"
    Acessar a tela "Serviços de Apoio>Serviço Arquivo Médico>Pacientes>Cadastro de Prontuários" @las
    Preencher Same |${dados}[Same]|
    Validar Acesso a Tela |Cadastro de Prontuário|
    Preencher Campos do Prontuario |${dados}[Paciente]| |${dados}[Armario]| |${dados}[Linha]| |${dados}[Obs]|
    Salvar e validar |${dados}[MsgSalva]|