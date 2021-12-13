#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Cancelamento de Cirurgia O_CANCIR
#################################################################################################################################################################
# Execução Exemplo:
# chrome:   robot -v browser:chrome -t "SCR1AOCANCIR-001:Cancelamento de Cirurgia" -d ./5-results/SCR1AOCANCIR-001 "3-tests/1-ATENDIMENTO/O_CANCIR.robot"
# firefox:  robot -v browser:firefox -t "SCR1AOCANCIR-001:Cancelamento de Cirurgia" -d ./5-results/SCR1AOCANCIR-001 "3-tests/1-ATENDIMENTO/O_CANCIR.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR1AOCANCIR-001 "3-tests/1-ATENDIMENTO/O_CANCIR.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR1AOCANCIR-001 "3-tests/1-ATENDIMENTO/O_CANCIR.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/O_CANCIR_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessao
# Suite Teardown    Encerra sessão

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            O_CANCIR
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AOCANCIR-001:Cancelamento de Cirurgia
# robot -v browser:chrome -t "SCR1AOCANCIR-001:Cancelamento de Cirurgia" -d ./5-results/SCR1AOCANCIR-001 "3-tests/1-ATENDIMENTO/O_CANCIR.robot"
# robot -v browser:firefox -t "SCR1AOCANCIR-001:Cancelamento de Cirurgia" -d ./5-results/SCR1AOCANCIR-001 "3-tests/1-ATENDIMENTO/O_CANCIR.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AOCANCIR-001"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Cancelamento de Cirurgia"@nprint @las
    Validar Acesso a Tela |${dados}[nomeTela]| 
    Preencher codigo e Validar |${dados}[codigo]|
    Preencher motivo do Cancelamento e Validar |${dados}[motivoCancelamento]| 
    Confirmar Cancelamento e validar mensagem |${dados}[mensagemSucesso]|