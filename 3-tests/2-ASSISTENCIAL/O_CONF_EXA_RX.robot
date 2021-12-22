#################################################################################################################################################################
# Autor: Marcos Costa
# Descrição: Validar a pesquisa por atendimento de pedido de exame de imagem para confirmação de exames realizados.
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -t "SCR2AMCONFEXARXA001:Fluxo Principal" -d ./5-results/SCR2AMCONFEXARXA001 "3-tests/2-ASSISTENCIAL/O_CONF_EXA_RX.robot"
# chrome:         robot -v browser:firefox -t "SCR2AMCONFEXARXA001:Fluxo Principal" -d ./5-results/SCR2AMCONFEXARXA001 "3-tests/2-ASSISTENCIAL/O_CONF_EXA_RX.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -t "SCR2AMCONFEXARXA001:Fluxo Principal" -d ./5-results/SCR2AMCONFEXARXA001 "3-tests/2-ASSISTENCIAL/O_CONF_EXA_RX.robot"
# chrome:         robot -v browser:headlessfirefox -t "SCR2AMCONFEXARXA001:Fluxo Principal" -d ./5-results/SCR2AMCONFEXARXA001 "3-tests/2-ASSISTENCIAL/O_CONF_EXA_RX.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/2-ASSISTENCIAL/O_CONF_EXA_RX_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}         o_conf_exa_rx
# Recebe dados do gerenciador
${dados}

*** Test Case ***
# SMF-7955
SCR2AMCONFEXARXA001:Fluxo Principal
    # robot -v browser:chrome -t "SCR2AMCONFEXARXA001:Fluxo Principal" -d ./5-results/SCR2AMCONFEXARXA001 "3-tests/2-ASSISTENCIAL/O_CONF_EXA_RX.robot"
    # robot -v browser:firefox -t "SCR2AMCONFEXARXA001:Fluxo Principal" -d ./5-results/SCR2AMCONFEXARXA001 "3-tests/2-ASSISTENCIAL/O_CONF_EXA_RX.robot"
    ${dados}  Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMCONFEXARXA001"
    Acessa a Tela Pela Busca |O_CONF_EXA_RX||Confirmação de Exames Realizados| @las
    Informa na Tela de Confirmação <Pacien> |${dados}[Pacien]| <Nome> |${dados}[Nome]| <Prest> |${dados}[Prest]| <Salvar> |${dados}[Salvar]|

|