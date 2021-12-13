#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela CON_MED
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/CON_MED "3-tests/1-ATENDIMENTO/CON_MED.robot"
# firefox: robot -v browser:firefox -d ./5-results/CON_MED "3-tests/1-ATENDIMENTO/CON_MED.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/CON_MED "3-tests/1-ATENDIMENTO/CON_MED.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/CON_MED "3-tests/1-ATENDIMENTO/CON_MED.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/CON_MED_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          CON_MED
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-8949:Fluxo Principal
# robot -v browser:chrome -t "SMF-8949:Fluxo Principal" -d ./5-results/SMF-8949 "3-tests/1-ATENDIMENTO/CON_MED.robot"
# robot -v browser:firefox -t "SMF-8949:Fluxo Principal" -d ./5-results/SMF-8949 "3-tests/1-ATENDIMENTO/CON_MED.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-8949"
    Acessar a tela "Atendimento>Internação>Consultas>Pacientes Internados>Internados"@nprint @las
    Preencher o campo Medico|${dados}[medico]|
    Clicar no botao [executar]
    Captura codigo|${suite}|${dados}[id]|