#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela M_LOTE - fechamento de lote
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_LOTE "3-tests\6-CONTROLADORIA\M_LOTE.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_LOTE "3-tests\6-CONTROLADORIA\M_LOTE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_LOTE.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_LOTE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../2-pages/6-CONTROLADORIA/M_LOTE_PAGE.robot
Resource            ../../1-resources/6-CONTROLADORIA/M_LOTE_STEPS.robot
Resource            ../../Config.robot


### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}           M_LOTE
# Recebe dados do gerenciador
${dados}

*** Test Case ***
MLOTE-001:Fluxo Principal
# robot -v browser:chrome -t "MLOTE-001:Fluxo Principal" -d ./5-results/MLOTE-001 "3-tests/6-CONTROLADORIA\M_LOTE.robot"
# robot -v browser:firefox -t "MLOTE-001:Fluxo Principal" -d ./5-results/MLOTE-001 "3-tests/6-CONTROLADORIA\M_LOTE.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "MLOTE-001"
    Acessar "M_LOTE"@nprint @las
    Preencher Campo Descrição |${dados}[descricao]|
    Preencher Campo Data final |${dados}[dataFinal]| a data do lançamento final do lote
    Clicar no botao [Salvar]
    Valida Mensagem     ${mensagemEsperada}     ${dados}[msgEsperada]
    Clicar duas vezes no campo [Lote] ou [Descrição]
    