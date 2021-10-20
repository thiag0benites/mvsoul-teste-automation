#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_GASTO_SALA 
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_GASTO_SALA "3-tests\Materiais\Almoxarifado\Inventario/M_GASTO_SALA.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_GASTO_SALA "3-tests\Materiais\Almoxarifado\Inventario/M_GASTO_SALA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_GASTO_SALA "3-tests\Materiais\Almoxarifado\Inventario/M_GASTO_SALA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_GASTO_SALA "3-tests\Materiais\Almoxarifado\Inventario/M_GASTO_SALA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/bd/BancoDados.robot
Resource            ../../1-resources/ContextoSteps.robot 
Resource            ../../1-resources/M_GASTO_SALA_STEPS.robot
Resource            ../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_GASTO_SALA
# Recebe dados do gerenciador
${dados}

*** Test Case ***