#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela C_LEITOS
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/C_LEITOS "3-tests/1-ATENDIMENTO/C_LEITOS.robot"
# firefox: robot -v browser:firefox -d ./5-results/C_LEITOS "3-tests/1-ATENDIMENTO/C_LEITOS.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/C_LEITOS "3-tests/1-ATENDIMENTO/C_LEITOS.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/C_LEITOS "3-tests/1-ATENDIMENTO/C_LEITOS.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/C_LEITOS_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          C_LEITOS
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-8674:Fluxo Principal
# robot -v browser:chrome -t "SMF-8674:Fluxo Principal" -d ./5-results/SMF-8674 "3-tests/1-ATENDIMENTO/C_LEITOS.robot"
# robot -v browser:firefox -t "SMF-8674:Fluxo Principal" -d ./5-results/SMF-8674 "3-tests/1-ATENDIMENTO/C_LEITOS.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-8674"
    Acessar a tela "Atendimento>Internação>Consultas>Painel de Leitos>Operacional"@nprint @las
    Pesquisar Leitos por Tipo de acomodacao
    Captura codigo|${suite}|${dados}[id]|