#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Permitir a transferência entre estoque de produtos normais.
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -t "SCR4MMTRAPRO-001:Transferir Produto Entre Estoques" -d ./5-results/SCR4MMTRAPRO-001 "3-tests/4-MATERIAIS/M_TRAPRO.robot"
# firefox:        robot -v browser:firefox -t "SCR4MMTRAPRO-001:Transferir Produto Entre Estoques" -d ./5-results/SCR4MMTRAPRO-001 "3-tests/4-MATERIAIS/M_TRAPRO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/SCR4MMTRAPRO-001 "3-tests/4-MATERIAIS/M_TRAPRO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR4MMTRAPRO-001 "3-tests/4-MATERIAIS/M_TRAPRO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/M_TRAPRO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_TRAPRO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMTRAPRO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MMTRAPRO-001:Fluxo Principal" -d ./5-results/SCR4MMTRAPRO-001 "3-tests/4-MATERIAIS/M_TRAPRO.robot"
# robot -v browser:firefox -t "SCR4MMTRAPRO-001:Fluxo Principal" -d ./5-results/SCR4MMTRAPRO-001 "3-tests/4-MATERIAIS/M_TRAPRO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMTRAPRO-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Movimentações>Transferência Entre Estoques"@nprint @las
    Preencher Estoque Origem |${dados}[estoque]|, Estoque Destino |${dados}[estoqueDestino]|, Nr Documento|${dados}[nrDoc]|
    Preencher Produto |${dados}[produto]|, Qtd de transferencia |${dados}[qtdTransferencia]|
    Clicar no botao[Concluir]
    Captura codigo|${suite}|${dados}[id]|