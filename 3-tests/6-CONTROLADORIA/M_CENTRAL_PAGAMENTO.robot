#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Central de Pagamento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_CENTRAL_PAGAMENTO.robot"
# firefox: robot -v browser:firefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_CENTRAL_PAGAMENTO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_CENTRAL_PAGAMENTO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_CENTRAL_PAGAMENTO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/6-CONTROLADORIA/M_CENTRAL_PAGAMENTO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_CENTRAL_PAGAMENTO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6MMCENTRALPAGAMENTO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR6MMCENTRALPAGAMENTO-001:Fluxo Principal" -d ./5-results/SCR6MMCENTRALPAGAMENTO-001 "3-tests/6-CONTROLADORIA/M_CENTRAL_PAGAMENTO.robot"
# robot -v browser:firefox -t "SCR6MMCENTRALPAGAMENTO-001:Fluxo Principal" -d ./5-results/SCR6MMCENTRALPAGAMENTO-001 "3-tests/6-CONTROLADORIA/M_CENTRAL_PAGAMENTO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6MMCENTRALPAGAMENTO-001"
    #Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar, Cta a Receber, Bancos)>Novidades>Central de Pagamento"@nprint @las
    Acessa a Tela Pela Busca |M_CENTRAL_PAGAMENTO||Central de Pagamento| @las

    Escolher e Informar o Periodo |${dados}[DataIni]|
    Selecionar Filtro e Pesquisar |${dados}[NrDoc]|
    Imprimir e Validar Impressao

SCR6MMCENTRALPAGAMENTO-002:Consulta Saldo
# robot -v browser:chrome -t "SCR6MMCENTRALPAGAMENTO-002:Consulta Saldo" -d ./5-results/SCR6MMCENTRALPAGAMENTO-002 "3-tests/6-CONTROLADORIA/M_CENTRAL_PAGAMENTO.robot"
# robot -v browser:firefox -t "SCR6MMCENTRALPAGAMENTO-002:Consulta Saldo" -d ./5-results/SCR6MMCENTRALPAGAMENTO-002 "3-tests/6-CONTROLADORIA/M_CENTRAL_PAGAMENTO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6MMCENTRALPAGAMENTO-002"
    #Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar, Cta a Receber, Bancos)>Novidades>Central de Pagamento"@nprint @las
    Acessa a Tela Pela Busca |M_CENTRAL_PAGAMENTO||Central de Pagamento| @las

    Informar Conta Corrente |${dados}[Conta]|
    Validar Saldo |${dados}[Saldo]|


SCR6MMCENTRALPAGAMENTO-003:Agrupamento
# robot -v browser:chrome -t "SCR6MMCENTRALPAGAMENTO-003:Agrupamento" -d ./5-results/SCR6MMCENTRALPAGAMENTO-003 "3-tests/6-CONTROLADORIA/M_CENTRAL_PAGAMENTO.robot"
# robot -v browser:firefox -t "SCR6MMCENTRALPAGAMENTO-003:Agrupamento" -d ./5-results/SCR6MMCENTRALPAGAMENTO-003 "3-tests/6-CONTROLADORIA/M_CENTRAL_PAGAMENTO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6MMCENTRALPAGAMENTO-003"
    #Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar, Cta a Receber, Bancos)>Novidades>Central de Pagamento"@nprint @las
    Acessa a Tela Pela Busca |M_CENTRAL_PAGAMENTO||Central de Pagamento| @las

    Informar Conta Corrente |${dados}[Conta]|
    Validar Saldo |${dados}[Saldo]|