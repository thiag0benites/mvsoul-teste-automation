#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Cancela Recurso O_CANC_REC
#################################################################################################################################################################
# Execução Exemplo:
# chrome:   robot -v browser:chrome -t "SCR6COCANCREC-001:Cancela Recurso" -d ./5-results/SCR6COCANCREC-001 "3-tests/6-CONTROLADORIA/O_CANC_REC.robot"
# firefox:  robot -v browser:firefox -t "SCR6COCANCREC-001:Cancela Recurso" -d ./5-results/SCR6COCANCREC-001 "3-tests/6-CONTROLADORIA/O_CANC_REC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR6COCANCREC-001 "3-tests/6-CONTROLADORIA/O_CANC_REC.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR6COCANCREC-001 "3-tests/6-CONTROLADORIA/O_CANC_REC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/6-CONTROLADORIA/O_CANC_REC_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessao
# Suite Teardown    Encerra sessão

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            O_CANC_REC
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6COCANCREC-001:Cancela Recurso
# robot -v browser:chrome -t "SCR6COCANCREC-001:Cancela Recurso" -d ./5-results/SCR6COCANCREC-001 "3-tests/6-CONTROLADORIA/O_CANC_REC.robot"
# robot -v browser:firefox -t "SCR6COCANCREC-001:Cancela Recurso" -d ./5-results/SCR6COCANCREC-001 "3-tests/6-CONTROLADORIA/O_CANC_REC.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6COCANCREC-001"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Receber>Cancelamento"@nprint @las
    Validar Acesso a Tela |${dados}[nomeTela]| 
    Preencher data Final e Validar |${dados}[dataFinal]|
    Preencher motivo do Cancelamento e Validar |${dados}[motivoCancelamento]| 
    Confirmar Cancelamento e validar mensagem |${dados}[mensagemSucesso]|