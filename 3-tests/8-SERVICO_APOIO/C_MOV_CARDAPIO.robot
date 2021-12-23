#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela C_MOV_CARDAPIO
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/SCR8SCMOVCARDAPIO-001 "3-tests/8-SERVICOS_DE_APOIO/C_MOV_CARDAPIO.robot"
# firefox: robot -v browser:firefox -d ./5-results/SCR8SCMOVCARDAPIO-001 "3-tests/8-SERVICOS_DE_APOIO/C_MOV_CARDAPIO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/SCR8SCMOVCARDAPIO-001 "3-tests/8-SERVICOS_DE_APOIO/C_MOV_CARDAPIO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR8SCMOVCARDAPIO-001 "3-tests/8-SERVICOS_DE_APOIO/C_MOV_CARDAPIO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/C_MOV_CARDAPIO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          C_MOV_CARDAPIO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SCMOVCARDAPIO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SCMOVCARDAPIO-001:Fluxo Principal" -d ./5-results/SCR8SCMOVCARDAPIO-001 "3-tests/8-SERVICO_APOIO/C_MOV_CARDAPIO.robot"
# robot -v browser:firefox -t "SCR8SCMOVCARDAPIO-001:Fluxo Principal" -d ./5-results/SCR8SCMOVCARDAPIO-001 "3-tests/8-SERVICO_APOIO/C_MOV_CARDAPIO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SCMOVCARDAPIO-001"
    Acessar a tela "Serviços de Apoio>Nutrição e Dietética>Consultas>Movimentação do Cardapio"@nprint @las
    Clicar no botao[Pesquisar]
    Preencher campo Solicitacao|${dados}[solicitacao]|
    Clicar no botao[Executar]
    Captura codigo Atendimento|${suite}|${dados}[id]|
    Captura Nome Paciente|${suite}|${dados}[id]|
    Clicar no botao[Reimprimir]
    Clicar no botao[Imprimir]
    Valida aba browser