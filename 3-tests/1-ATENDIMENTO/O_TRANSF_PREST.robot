#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela O_TRANSF_PREST
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/O_TRANSF_PREST "3-tests/1-ATENDIMENTO/O_TRANSF_PREST.robot"
# firefox: robot -v browser:firefox -d ./5-results/O_TRANSF_PREST "3-tests/1-ATENDIMENTO/O_TRANSF_PREST.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/O_TRANSF_PREST "3-tests/1-ATENDIMENTO/O_TRANSF_PREST.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/O_TRANSF_PREST "3-tests/1-ATENDIMENTO/O_TRANSF_PREST.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/bd/BancoDados.robot
Resource            ../../1-resources/ContextoSteps.robot 
Resource            ../../1-resources/1-ATENDIMENTO/O_TRANSF_PREST_STEPS.robot
Resource            ../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
#Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            O_TRANSF_PREST
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-10362:Transferencia de Medicos
# robot -v browser:chrome -t "SMF-10362:Transferencia de Medicos" -d ./5-results/SMF-10362 "3-tests/1-ATENDIMENTO/O_TRANSF_PREST.robot"
# robot -v browser:firefox -t "SMF-10362:Transferencia de Medicos" -d ./5-results/SMF-10362 "3-tests/1-ATENDIMENTO/O_TRANSF_PREST.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-10362"
    Acessar a tela "Atendimento>Internação>Atendimento>Transferência de Médico"@nprint @las
    Preencher os campos |${dados}[numAtend]|,|${dados}[nomePrestadorDest]|,|${dados}[motivoTransferencia]|,|${dados}[servico]|
    Confirmar Transferencia de Prestador
