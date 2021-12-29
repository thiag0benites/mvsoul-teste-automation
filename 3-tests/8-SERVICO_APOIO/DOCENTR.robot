#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: TELA DOCENTR
#################################################################################################################################################################
# Execução Exemplo:
# chrome:   robot -v browser:chrome -t "SCR8SDOCENTR-001:Entrada de Documentos" -d ./5-results/SCR8SDOCENTR-001 "3-tests/8-SERVICO_APOIO/DOCENTR.robot"
# firefox:  robot -v browser:firefox -t "SCR8SDOCENTR-001:Entrada de Documentos" -d ./5-results/SCR8SDOCENTR-001 "3-tests/8-SERVICO_APOIO/DOCENTR.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR8SDOCENTR-001 "3-tests/8-SERVICO_APOIO/DOCENTR.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR8SDOCENTR-001 "3-tests/8-SERVICO_APOIO/DOCENTR.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/8-SERVICO_APOIO/DOCENTR_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessao
# Suite Teardown    Encerra sessão

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            DOCENTR
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SDOCENTR-001:Entrada de Documentos
# robot -v browser:chrome -t "SCR8SDOCENTR-001:Entrada de Documentos" -d ./5-results/SCR8SDOCENTR-001 "3-tests/8-SERVICO_APOIO/DOCENTR.robot"
# robot -v browser:firefox -t "SCR8SDOCENTR-001:Entrada de Documentos" -d ./5-results/SCR8SDOCENTR-001 "3-tests/8-SERVICO_APOIO/DOCENTR.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SDOCENTR-001"
    Acessar |${dados}[tela]|@nprint @las
    Validar Acesso a Tela |${dados}[nomeTela]| 
    Preencher SAME e Validar |${dados}[SAME]|
    Preencher Data Entrada |${dados}[dataEntrada]|, Atendimento |${dados}[atendimento]|, observacao |${dados}[observacao]| e validar
    Preencher Armario |${dados}[armario]|, Tipo de Documentos |${dados}[tipoDocumento]| e validar
    Imprimir e validar mensagem |${dados}[mensagemSucesso]|