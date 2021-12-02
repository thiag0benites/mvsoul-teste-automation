#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Status de documentos O_DOC_STATUS
#################################################################################################################################################################
# Execução Exemplo:
# chrome:   robot -v browser:chrome -t "SCR6CO_DOC_STATUS-001:Caixa Importar movimentação" -d ./5-results/SCR6CO_DOC_STATUS-001 "3-tests/6-CONTROLADORIA/O_DOC_STATUS.robot"
# firefox:  robot -v browser:firefox -t "SCR6CO_DOC_STATUS-001:Caixa Importar movimentação" -d ./5-results/SCR6CO_DOC_STATUS-001 "3-tests/6-CONTROLADORIA/O_DOC_STATUS.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR6CO_DOC_STATUS-001 "3-tests/6-CONTROLADORIA/O_DOC_STATUS.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR6CO_DOC_STATUS-001 "3-tests/6-CONTROLADORIA/O_DOC_STATUS.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/6-CONTROLADORIA/O_DOC_STATUS_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessao
# Suite Teardown    Encerra sessão

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            O_DOC_STATUS
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6CODOCSTATUS-001:Status de documentos
# robot -v browser:chrome -t "SCR6CODOCSTATUS-001:Status de documentos" -d ./5-results/SCR6CODOCSTATUS-001 "3-tests/6-CONTROLADORIA/O_DOC_STATUS.robot"
# robot -v browser:firefox -t "SCR6CODOCSTATUS-001:Status de documentos" -d ./5-results/SCR6CODOCSTATUS-001 "3-tests/6-CONTROLADORIA/O_DOC_STATUS.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6CODOCSTATUS-001"
    Acessar a tela "Controladoria>Caixa>Documentos>Status"@nprint @las
    Validar Acesso a Tela |${dados}[nomeTela]| 
    Preencher codigo e Validar |${dados}[codigo]|
    Preencher observacao e Validar |${dados}[observacao]|
    Alterar data |${dados}[dtVencimento]| e validar mensagem |${dados}[mensagemSucesso]|
    
   