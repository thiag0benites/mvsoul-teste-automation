#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela O_CONSOLIDACAO
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/O_CONSOLIDACAO "3-tests\Materiais\Almoxarifado\Inventario/O_CONSOLIDACAO.robot"
# firefox: robot -v browser:firefox -d ./5-results/O_CONSOLIDACAO "3-tests\Materiais\Almoxarifado\Inventario/O_CONSOLIDACAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/O_CONSOLIDACAO "3-tests\Materiais\Almoxarifado\Calculos/Consolidacao/O_CONSOLIDACAO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/O_CONSOLIDACAO "3-tests\Materiais\Almoxarifado\Calculos/Consolidacao/O_CONSOLIDACAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/bd/BancoDados.robot
Resource            ../../1-resources/ContextoSteps.robot 
Resource            ../../1-resources/4-MATERIAIS/O_CONSOLIDACAO_STEPS.robot
Resource            ../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            O_CONSOLIDACAO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MOCONSOLIDACAO-001:Fluxo principal
# robot -v browser:chrome -t "SCR4MOCONSOLIDACAO-001:Fluxo principal" -d ./5-results/SCR4MOCONSOLIDACAO-001 "3-tests/4-MATERIAIS/O_CONSOLIDACAO.robot"
# robot -v browser:firefox -t "SCR4MOCONSOLIDACAO-001:Fluxo principal" -d ./5-results/SCR4MOCONSOLIDACAO-001 "3-tests/4-MATERIAIS/O_CONSOLIDACAO.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MOCONSOLIDACAO-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Preencher campos mes e ano 
    Clicar no botão de confirmacao 
    