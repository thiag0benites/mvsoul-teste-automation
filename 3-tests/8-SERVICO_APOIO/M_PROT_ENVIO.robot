#################################################################################################################################################################
# Autor: Marcos Costa
# Descrição: Validar a pesquisa por atendimento de pedido de exame de imagem para confirmação de exames realizados.
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -t "SCR8SMPROTENVIOS001:Fluxo Principal" -d ./5-results/SCR8SMPROTENVIOS001 "3-tests/8-SERVICO_APOIO/M_PROT_ENVIO.robot"
# chrome:         robot -v browser:firefox -t "SCR8SMPROTENVIOS001:Fluxo Principal" -d ./5-results/SCR8SMPROTENVIOS001 "3-tests/8-SERVICO_APOIO/M_PROT_ENVIO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -t "SCR8SMPROTENVIOS001:Fluxo Principal" -d ./5-results/SCR8SMPROTENVIOS001 "3-tests/8-SERVICO_APOIO/M_PROT_ENVIO.robot"
# chrome:         robot -v browser:headlessfirefox -t "SCR8SMPROTENVIOS001:Fluxo Principal" -d ./5-results/SCR8SMPROTENVIOS001 "3-tests/8-SERVICO_APOIO/M_PROT_ENVIO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/8-SERVICO_APOIO/M_PROT_ENVIO.STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
# Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
# ${suite}         m_prot_envio
# Recebe dados do gerenciador
# ${dados}

*** Test Case ***
# INTER-5924
SCR8SMPROTENVIOS001:Fluxo Principal
    # robot -v browser:chrome -t "SCR8SMPROTENVIOS001:Fluxo Principal" -d ./5-results/SCR8SMPROTENVIOS001 "3-tests/8-SERVICO_APOIO/M_PROT_ENVIO.robot"
    # robot -v browser:firefox -t "SCR8SMPROTENVIOS001:Fluxo Principal" -d ./5-results/SCR8SMPROTENVIOS001 "3-tests/8-SERVICO_APOIO/M_PROT_ENVIO.robot"
    # ${dados}  Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMPROTENVIOS001"
    Acessa a Tela Pela Busca |M_PROT_ENVIO||Envio de Documentos| @las
    Informa na Tela de Envio Doc <SetorOri> |FATURAMENTO| <SetorDest> |AMBULATORIO HOBRA| <PerInicial> |01/12/2021| <PerFinal> |24/12/2021| <DocImportar> |PRONTUARIOXXXXXXXXXXXXX| <Salvar> |${MsgEsperada}|