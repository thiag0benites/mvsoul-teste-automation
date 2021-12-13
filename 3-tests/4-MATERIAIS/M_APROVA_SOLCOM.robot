#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Esse caso de teste tem como objetivo permitir a aprovação de uma de solicitação de compra automática por usuário do primeiro nivel
#################################################################################################################################################################
# Execução Exemplo:
# chrome:   robot -v browser:chrome -t "SCR4MMAPROVASOLCOM-001:Aprovar Solicitação Automática - Apenas Primeiro Nível" -d ./5-results/SCR4MMAPROVASOLCOM-001 "3-tests/4-MATERIAIS/M_APROVA_SOLCOM.robot"
# firefox:  robot -v browser:firefox -t "SCR4MMAPROVASOLCOM-001:Aprovar Solicitação Automática - Apenas Primeiro Nível" -d ./5-results/SCR4MMAPROVASOLCOM-001 "3-tests/4-MATERIAIS/M_APROVA_SOLCOM.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR4MMAPROVASOLCOM-001 "3-tests/4-MATERIAIS/M_APROVA_SOLCOM.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR4MMAPROVASOLCOM-001 "3-tests/4-MATERIAIS/M_APROVA_SOLCOM.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/M_APROVA_SOLCOM_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            m_aprova_solcom
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMAPROVASOLCOM-001:Aprovar Solicitação Automática - Apenas Primeiro Nível
# robot -v browser:chrome -t "SCR4MMAPROVASOLCOM-001:Aprovar Solicitação Automática - Apenas Primeiro Nível" -d ./5-results/SSCR4MMAPROVASOLCOM-001 "3-tests/4-MATERIAIS/M_APROVA_SOLCOM.robot"
# robot -v browser:firefox -t "SCR4MMAPROVASOLCOM-001:Aprovar Solicitação Automática - Apenas Primeiro Nível" -d ./5-results/SCR4MMAPROVASOLCOM-001 "3-tests/4-MATERIAIS/M_APROVA_SOLCOM.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMAPROVASOLCOM-001"
    Acessar a tela "Materiais e Logística>Compras>Compras>Solicitação de Compras>Aprovação"@nprint @las
    Validar Acesso a Tela |Aprovação da Solicitação de Compras|
    Clicar no botao Pesquisar
    Preencher Codigo |${dados}[codigo]|
    Clicar no botao Executar
    Validar Codigo de Aprovacao |${dados}[validaCodAprovacao]|
   
