#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela O_AUTORD 
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/O_AUTORD "3-tests/4-MATERIAIS/O_AUTORD.robot"
# firefox: robot -v browser:firefox -d ./5-results/O_AUTORD "3-tests/4-MATERIAIS/O_AUTORD.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/O_AUTORD "3-tests/4-MATERIAIS/O_AUTORD.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/O_AUTORD "3-tests/4-MATERIAIS/O_AUTORD.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/bd/BancoDados.robot
Resource            ../../1-resources/ContextoSteps.robot 
Resource            ../../1-resources/4-MATERIAIS/O_AUTORD_STEPS.robot
Resource            ../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            O_AUTORD
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-2302:Autorizar Ordem de Compra com Autorizacao em Serie Ativa
# robot -v browser:chrome -t "SMF-2302:Autorizar Ordem de Compra com Autorizacao em Serie Ativa" -d ./5-results/MATERIAIS_SMF_2302 "3-tests/4-MATERIAIS/O_AUTORD.robot"
# robot -v browser:firefox -t "SMF-2302:Autorizar Ordem de Compra com Autorizacao em Serie Ativa" -d ./5-results/MATERIAIS_SMF_2302 "3-tests/4-MATERIAIS/O_AUTORD.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-2302"
    Acessar a tela "Materiais e Logística>Compras>Compras>Ordem de Compra>Autorização"@nprint @las
    Preencher o campo código |${dados}[codigo]|
    Clicar no botão Executar 
    Clicar no botão Aprovada na Tabela
    Clicar no botão confirmar Autorizacao