#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela O_RECEBE_SOL
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/O_RECEBE_SOL "3-tests/4-MATERIAIS/O_RECEBE_SOL.robot"
# firefox: robot -v browser:firefox -d ./5-results/O_RECEBE_SOL "3-tests/4-MATERIAIS/O_RECEBE_SOL.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/O_RECEBE_SOL "3-tests/4-MATERIAIS/O_RECEBE_SOL.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/O_RECEBE_SOL "3-tests/4-MATERIAIS/O_RECEBE_SOL.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/bd/BancoDados.robot
Resource            ../../1-resources/ContextoSteps.robot 
Resource            ../../1-resources/4-MATERIAIS/O_RECEBE_SOL_STEPS.robot
Resource            ../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            O_RECEBE_SOL
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MORECEBESOL-001:Fluxo principal
# robot -v browser:chrome -t "SCR4MORECEBESOL-001:Fluxo principal" -d ./5-results/SCR4MORECEBESOL-001 "3-tests/4-MATERIAIS/O_RECEBE_SOL.robot"
# robot -v browser:firefox -t "SCR4MORECEBESOL-001:Fluxo principal" -d ./5-results/SCR4MORECEBESOL-001 "3-tests/4-MATERIAIS/O_RECEBE_SOL.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MORECEBESOL-001"
    Acessar a tela "Materiais e Logística>Compras>Compras>Solicitação de Compras>Receber Solicitação"@nprint @las
    Marcar o checkbox Recebe e clicar no botão para receber solicitações
    Clicar no botão Não 
    Validar mensagem de confirmação



     