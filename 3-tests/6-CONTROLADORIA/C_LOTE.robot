#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela C_LOTE
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/C_LOTE "3-tests/6-CONTROLADORIA/C_LOTE.robot"
# firefox: robot -v browser:firefox -d ./5-results/C_LOTE "3-tests/6-CONTROLADORIA/C_LOTE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/MED_TIPCOM "3-tests/6-CONTROLADORIA/C_LOTE.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/MED_TIPCOM "3-tests/6-CONTROLADORIA/C_LOTE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/6-CONTROLADORIA/C_LOTE_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          C_LOTE
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6COCLOTE-001:Fluxo principal
# robot -v browser:chrome -t "SCR6COCLOTE-001:Fluxo principal" -d ./5-results/C_LOTE "3-tests/6-CONTROLADORIA/C_LOTE.robot"
# robot -v browser:firefox -t "SCR6COCLOTE-001:Fluxo principal" -d ./5-results/C_LOTE "3-tests/6-CONTROLADORIA/C_LOTE.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6COCLOTE-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Preencher o campo |${dados}[lote]|
    Clicar no botao Executar
    Validar Resultado da Pesquisa da tela Consulta de Lancamento contabil |${dados}[dadoConsulta]|