#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Criação de um modelo de Plano de Contas Contábil
#################################################################################################################################################################
# Execução Exemplo:
# chrome:   robot -v browser:chrome -t "SCR6CMRECEBEGLOSA-001:Recebimento de recursos" -d ./5-results/SCR6CPLANOCONTABIL-001 "3-tests/5-FATURAMENTO/M_RECEBE_GLOSA.robot"
# firefox:  robot -v browser:firefox -t "SCR6CMRECEBEGLOSA-001:Recebimento de recursos" -d ./5-results/SCR6CPLANOCONTABIL-001 "3-tests/5-FATURAMENTO/M_RECEBE_GLOSA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR6CPLANOCONTABIL-001 "3-tests/5-FATURAMENTO/M_RECEBE_GLOSA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR6CPLANOCONTABIL-001 "3-tests/5-FATURAMENTO/M_RECEBE_GLOSA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/5-FATURAMENTO/M_RECEBE_GLOSA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}           M_RECEBE_GLOSA
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6CMRECEBEGLOSA-001:Recebimento de recursos
# robot -v browser:chrome -t "SCR6CMRECEBEGLOSA-001:Recebimento de recursos" -d ./5-results/SCR6CMRECEBEGLOSA-001 "3-tests/5-FATURAMENTO/M_RECEBE_GLOSA.robot"
# robot -v browser:firefox -t "SCR6CMRECEBEGLOSA-001:Recebimento de recursos" -d ./5-results/SCR6CMRECEBEGLOSA-001 "3-tests/5-FATURAMENTO/M_RECEBE_GLOSA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6CMRECEBEGLOSA-001"
    Acessar "M_RECEBE_GLOSA"@nprint @las
    Validar Acesso a Tela |${dados}[nomeTela]|
    Preencher Lote e Validar |${dados}[lote]|
    Alterar data |${dados}[dtRecebimento]| e validar mensagem |${dados}[mensagemSucesso]|