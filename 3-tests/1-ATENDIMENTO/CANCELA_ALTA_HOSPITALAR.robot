#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Este caso de teste tem como objetivo, realizar a exportação da DMED de acordo com os dados informados no recebimento da conta ou na Nota Fiscal particular.
#################################################################################################################################################################
# Execução Exemplo:
# chrome:   robot -v browser:chrome -t "SCR1ACANCELAALTAHOSPITALAR-001:Realizar Cancelamento de Alta Hospitalar" -d ./5-results/SCR1ACANCELAALTAHOSPITALAR-001 "3-tests/1-ATENDIMENTO/CANCELA_ALTA_HOSPITALAR.robot"
# firefox:  robot -v browser:firefox -t "SCR1ACANCELAALTAHOSPITALAR-001:Realizar Cancelamento de Alta Hospitalar" -d ./5-results/SCR1ACANCELAALTAHOSPITALAR-001 "3-tests/1-ATENDIMENTO/CANCELA_ALTA_HOSPITALAR.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR1ACANCELAALTAHOSPITALAR-001 "3-tests/1-ATENDIMENTO/CANCELA_ALTA_HOSPITALAR.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR1ACANCELAALTAHOSPITALAR-001 "3-tests/1-ATENDIMENTO/CANCELA_ALTA_HOSPITALAR.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/CANCELA_ALTA_HOSPITALAR_STEPS.robot
# Resource            ../../Config.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessao
# Suite Teardown    Encerra sessão

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}           CANCELA_ALTA_HOSPITALAR
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1ACANCELAALTAHOSPITALAR-001:Realizar Cancelamento de Alta Hospitalar
# robot -v browser:chrome -t "SCR1ACANCELAALTAHOSPITALAR-001:Realizar Cancelamento de Alta Hospitalar" -d ./5-results/SCR1ACANCELAALTAHOSPITALAR-001 "3-tests/1-ATENDIMENTO/CANCELA_ALTA_HOSPITALAR.robot"
# robot -v browser:firefox -t "SCR1ACANCELAALTAHOSPITALAR-001:Realizar Cancelamento de Alta Hospitalar" -d ./5-results/SCR1ACANCELAALTAHOSPITALAR-001 "3-tests/1-ATENDIMENTO/CANCELA_ALTA_HOSPITALAR.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1ACANCELAALTAHOSPITALAR-001"
    Acessar a tela "Atendimento>Internação>Atendimento>Alta>Cancelamento>Alta Hospitalar"@nprint @las
    Validar Acesso a Tela |${dados}[nomeTela]| 
    Informar codigo de atendimento |${dados}[codigo]|
    Validar Preenchimento |${dados}[nomePaciente]|  
    Cancelar Altar e validar mensagem |${dados}[mensagemSucesso]|

SCR1ACANCELAALTAHOSPITALAR-002:Realizar Cancelamento de Alta Médica
# robot -v browser:chrome -t "SCR1ACANCELAALTAHOSPITALAR-002:Realizar Cancelamento de Alta Médica" -d ./5-results/SCR1ACANCELAALTAHOSPITALAR-002 "3-tests/1-ATENDIMENTO/CANCELA_ALTA_HOSPITALAR.robot"
# robot -v browser:firefox -t "SCR1ACANCELAALTAHOSPITALAR-002:Realizar Cancelamento de Alta Médica" -d ./5-results/SCR1ACANCELAALTAHOSPITALAR-002 "3-tests/1-ATENDIMENTO/CANCELA_ALTA_HOSPITALAR.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1ACANCELAALTAHOSPITALAR-002"
    Acessar a tela "Atendimento>Internação>Atendimento>Alta>Cancelamento>Alta Médica"@nprint @las
    Validar Acesso a Tela |${dados}[nomeTela]| 
    Informar codigo de atendimento |${dados}[codigo]|
    Validar Preenchimento |${dados}[nomePaciente]|  
    Cancelar Altar e validar mensagem |${dados}[mensagemSucesso]|
    