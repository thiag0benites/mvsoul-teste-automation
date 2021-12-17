#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_MOV_CARDAPIO
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_MOV_CARDAPIO "3-tests/8-SERVICO_APOIO/M_MOV_CARDAPIO.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_MOV_CARDAPIO "3-tests/8-SERVICO_APOIO/M_MOV_CARDAPIO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_MOV_CARDAPIO "3-tests/8-SERVICO_APOIO/M_MOV_CARDAPIO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_MOV_CARDAPIO "3-tests/8-SERVICO_APOIO/M_MOV_CARDAPIO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/M_MOV_CARDAPIO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_MOV_CARDAPIO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMMOVCARDAPIO-001:Fluxo principal
# robot -v browser:chrome -t "SCR5FMMOVCARDAPIO-001:Fluxo principal" -d ./5-results/M_MOV_CARDAPIO "3-tests/8-SERVICO_APOIO/M_MOV_CARDAPIO.robot"
# robot -v browser:firefox -t "SCR5FMMOVCARDAPIO-001:Fluxo principal" -d ./5-results/M_MOV_CARDAPIO "3-tests/8-SERVICO_APOIO/M_MOV_CARDAPIO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMMOVCARDAPIO-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Preencher os inputs da tela de Cardapios |${dados}[tipoRefeicao]|,|${dados}[codAtendimento]|,|${dados}[tipoDieta]|,|${dados}[copa]|,|${dados}[setor]|,|${dados}[observacao]|
    Preencher a tabela do cardapio |${dados}[opcao]|,|${dados}[prato]|,|${dados}[qtdCardapio]|
    Salvar cadastro do cardapio
    Validar cadastro na tela |${dados}[MsgEsperada]|