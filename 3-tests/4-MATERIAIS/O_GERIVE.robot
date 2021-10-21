#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela O_GERIVE - Geração do Inventário
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/O_GERIVE "3-tests/4-MATERIAIS/O_GERIVE.robot"
# firefox: robot -v browser:firefox -d ./5-results/O_GERIVE "3-tests/4-MATERIAIS/O_GERIVE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/O_GERIVE "3-tests/4-MATERIAIS/O_GERIVE.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/O_GERIVE "3-tests/4-MATERIAIS/O_GERIVE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/bd/BancoDados.robot
Resource            ../../1-resources/ContextoSteps.robot 
Resource            ../../1-resources/O_GERIVE_STEPS.robot
Resource            ../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            O_GERIVE
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MOGERIVE-001:Geracao do Inventario
# robot -v browser:chrome -t "SCR4MOGERIVE-001:Geracao do Inventario" -d ./5-results/SCR4MOGERIVE-001 "3-tests/4-MATERIAIS/O_GERIVE.robot"
# robot -v browser:firefox -t "SCR4MOGERIVE-001:Geracao do Inventario" -d ./5-results/SCR4MOGERIVE-001 "3-tests/4-MATERIAIS/O_GERIVE.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MOGERIVE-001"
     Acessar a tela "Materiais e Logística>Almoxarifado>Inventário>Geração do Inventário"@nprint @las
     Usuário deverá preencher o campo <Contagem>|${dados}[codContagem]|
     Clicar no botão Confirmar
     Clicar no botão Ok no modal de notificacao
