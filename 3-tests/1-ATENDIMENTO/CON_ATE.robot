#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela CON_ATE
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/CON_ATE "3-tests/1-ATENDIMENTO/CON_ATE.robot"
# firefox: robot -v browser:firefox -d ./5-results/CON_ATE "3-tests/1-ATENDIMENTO/CON_ATE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/CON_ATE "3-tests/1-ATENDIMENTO/CON_ATE.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/CON_ATE "3-tests/1-ATENDIMENTO/CON_ATE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/bd/BancoDados.robot
Resource            ../../1-resources/ContextoSteps.robot 
Resource            ../../1-resources/1-ATENDIMENTO/CON_ATE_STEPS.robot
Resource            ../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
#Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            CON_ATE
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SRC1ACONATE-001:Consulta de Atendimentos
# robot -v browser:chrome -t "SRC1ACONATE-001:Consulta de Atendimentos" -d ./5-results/SRC1ACONATE-001 "3-tests/1-ATENDIMENTO/CON_ATE.robot"
# robot -v browser:firefox -t "SRC1ACONATE-001:Consulta de Atendimentos" -d ./5-results/SRC1ACONATE-001 "3-tests/1-ATENDIMENTO/CON_ATE.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-10550"
    Acessar a tela "Atendimento>Internação>Consultas>Atendimentos"@nprint @las
    Usuário deverá preencher o campo <Dt. Ini. Atend.>|${dados}[dataIniAtend]|,|${dados}[dataFimAtend]|,|${dados}[Internacao]|
    Clicar no botão Executar 