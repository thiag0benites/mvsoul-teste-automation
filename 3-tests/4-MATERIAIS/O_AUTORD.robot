#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela O_AUTORD
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/O_AUTORD "3-tests/4-MATERIAIS/O_AUTORD.robot"
# firefox: robot -v browser:firefox -d ./5-results/O_AUTORD "3-tests/4-MATERIAIS/O_AUTORD.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/O_AUTORD "3-tests/4-MATERIAIS/O_AUTORD.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/O_AUTORD "3-tests/4-MATERIAIS/O_AUTORD.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/O_AUTORD_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          O_AUTORD
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MOAUTORD-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MOAUTORD-001:Fluxo Principal" -d ./5-results/O_AUTORD "3-tests/4-MATERIAIS/O_AUTORD.robot"
# robot -v browser:firefox -t "SCR4MOAUTORD-001:Fluxo Principal" -d ./5-results/O_AUTORD "3-tests/4-MATERIAIS/O_AUTORD.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MOAUTORD-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Preencher o campo codigo |${dados}[codigo]|
    Clicar no botao Executar
    Clicar no botao Aprovada na Tabela
    Clicar no botao confirmar Autorizacao
