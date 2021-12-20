#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_MOV_CARDAPIO_MULTIPLO
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_MOV_CARDAPIO_MULTIPLO "3-tests/8-SERVICO_APOIO/M_MOV_CARDAPIO_MULTIPLO.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_MOV_CARDAPIO_MULTIPLO "3-tests/8-SERVICO_APOIO/M_MOV_CARDAPIO_MULTIPLO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_MOV_CARDAPIO_MULTIPLO "3-tests/8-SERVICO_APOIO/M_MOV_CARDAPIO_MULTIPLO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_MOV_CARDAPIO_MULTIPLO "3-tests/8-SERVICO_APOIO/M_MOV_CARDAPIO_MULTIPLO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/M_MOV_CARDAPIO_MULTIPLO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown    Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_MOV_CARDAPIO_MULTIPLO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMMOVCARDAPIOMULTIPLO-001:Fluxo principal
# robot -v browser:chrome -t "SCR5FMMOVCARDAPIOMULTIPLO-001:Fluxo principal" -d ./5-results/M_MOV_CARDAPIO_MULTIPLO "3-tests/8-SERVICO_APOIO/M_MOV_CARDAPIO_MULTIPLO.robot"
# robot -v browser:firefox -t "SCR5FMMOVCARDAPIOMULTIPLO-001:Fluxo principal" -d ./5-results/M_MOV_CARDAPIO_MULTIPLO "3-tests/8-SERVICO_APOIO/M_MOV_CARDAPIO_MULTIPLO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMMOVCARDAPIOMULTIPLO-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Preencher os inputs da tela de Cardapios |${dados}[codAtendimento]|,|${dados}[tipoDieta]|
    Preencher a tabela de solicitacao de refeicao |${dados}[tipoRefeicao]|,|${dados}[copa]|,|${dados}[setor]|
    Preencher a tabela do cardapio |${dados}[opcao]|,|${dados}[prato]|,|${dados}[qtdCardapio]|
    Salvar cadastro do cardapio
    Validar cadastro na tela |${dados}[MsgEsperada]|