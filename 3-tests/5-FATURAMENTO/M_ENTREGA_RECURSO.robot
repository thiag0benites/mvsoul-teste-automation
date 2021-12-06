#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Passo a passo da tela de M_ENTREGA_RECURSO
#################################################################################################################################################################
# Execução Exemplo:
# chrome:   robot -v browser:chrome -t "SCR6CMENTREGARECURSO-001:Entrega de Recurso do Recurso" -d ./5-results/SCR6CPLANOCONTABIL-001 "3-tests/5-FATURAMENTO/M_ENTREGA_RECURSO.robot"
# firefox:  robot -v browser:firefox -t "SCR6CMENTREGARECURSO-001:Entrega de Recurso do Recurso" -d ./5-results/SCR6CPLANOCONTABIL-001 "3-tests/5-FATURAMENTO/M_ENTREGA_RECURSO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR6CPLANOCONTABIL-001 "3-tests/5-FATURAMENTO/M_ENTREGA_RECURSO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR6CPLANOCONTABIL-001 "3-tests/5-FATURAMENTO/M_ENTREGA_RECURSO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/5-FATURAMENTO/M_ENTREGA_RECURSO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessao
# Suite Teardown    Encerra sessao

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}           M_ENTREGA_RECURSO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6CMENTREGARECURSO-001:Entrega de Recurso do Recurso
# robot -v browser:chrome -t "SCR6CMENTREGARECURSO-001:Entrega de Recurso do Recurso" -d ./5-results/SCR6CMENTREGARECURSO-001 "3-tests/5-FATURAMENTO/M_ENTREGA_RECURSO.robot"
# robot -v browser:firefox -t "SCR6CMENTREGARECURSO-001:Entrega de Recurso do Recurso" -d ./5-results/SCR6CMENTREGARECURSO-001 "3-tests/5-FATURAMENTO/M_ENTREGA_RECURSO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6CMENTREGARECURSO-001"
    Acessar "M_ENTREGA_RECURSO"@nprint @las
    Validar Acesso a Tela |${dados}[nomeTela]|
    Preencher Remessa e Validar |${dados}[remessa]|
    Preencher Recurso e Validar |${dados}[recurso]|
    Alterar data |${dados}[dtPrevisao]| e validar mensagem |${dados}[mensagemSucesso]|