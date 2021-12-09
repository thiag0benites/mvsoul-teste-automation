#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Pendencias de Atendimento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\PEND_ATE.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\PEND_ATE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\PEND_ATE.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\PEND_ATE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/PEND_ATE_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          PEND_ATE
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1APENDATE-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1APENDATE-001:Fluxo Principal" -d ./5-results/SCR1APENDATE-001 "3-tests/1-ATENDIMENTO/PEND_ATE.robot"
# robot -v browser:firefox -t "SCR1APENDATE-001:Fluxo Principal" -d ./5-results/SCR1APENDATE-001 "3-tests/1-ATENDIMENTO/PEND_ATE.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1APENDATE-001"
    Acessa a Tela Pela Busca |pend_ate||Registro| @las
    Validar Acesso a Tela |Pendências|
    
    Preencher Atendimento |${dados}[Atendimento]|
    Preencher Tipo e Obs |${dados}[Tipo]| |${dados}[Observacao]|
    Salvar e Validar |${dados}[MsgSalva]|