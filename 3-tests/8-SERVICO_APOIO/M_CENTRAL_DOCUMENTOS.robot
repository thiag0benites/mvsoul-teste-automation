#################################################################################################################################################################
# Autor: Marcos Costa
# Descrição: Validar Acesso à tela de Envio de Documentos através do botão <Novo Protocolo> na tela Central de Documentos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -t "SCR8SMCENTRALDOCUMENTOSS001:Fluxo Principal" -d ./5-results/SCR8SMCENTRALDOCUMENTOSS001 "3-tests/8-SERVICO_APOIO/M_CENTRAL_DOCUMENTOS.robot"
# chrome:         robot -v browser:firefox -t "SCR8SMCENTRALDOCUMENTOSS001:Fluxo Principal" -d ./5-results/SCR8SMCENTRALDOCUMENTOSS001 "3-tests/8-SERVICO_APOIO/M_CENTRAL_DOCUMENTOS.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -t "SCR8SMCENTRALDOCUMENTOSS001:Fluxo Principal" -d ./5-results/SCR8SMCENTRALDOCUMENTOSS001 "3-tests/8-SERVICO_APOIO/M_CENTRAL_DOCUMENTOS.robot"
# chrome:         robot -v browser:headlessfirefox -t "SCR8SMCENTRALDOCUMENTOSS001:Fluxo Principal" -d ./5-results/SCR8SMCENTRALDOCUMENTOSS001 "3-tests/8-SERVICO_APOIO/M_CENTRAL_DOCUMENTOS.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/8-SERVICO_APOIO/M_CENTRAL_DOCUMENTOS_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_central_documentos
# Recebe dados do gerenciador
${dados}

*** Test Case ***
# INTER-6172
SCR8SMCENTRALDOCUMENTOSS001:Fluxo Principal
    # robot -v browser:chrome -t "SCR8SMCENTRALDOCUMENTOSS001:Fluxo Principal" -d ./5-results/SCR8SMCENTRALDOCUMENTOSS001 "3-tests/8-SERVICO_APOIO/M_CENTRAL_DOCUMENTOS.robot"
    # robot -v browser:firefox -t "SCR8SMCENTRALDOCUMENTOSS001:Fluxo Principal" -d ./5-results/SCR8SMCENTRALDOCUMENTOSS001 "3-tests/8-SERVICO_APOIO/M_CENTRAL_DOCUMENTOS.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMCENTRALDOCUMENTOSS001"
    Acessa a Tela Pela Busca |M_CENTRAL_DOCUMENTOS||Central de Documentos| @las
    Informar na Tela de Central de Doc <SetorTra> |${dados}[SetorTra]| <Protocolo> |${dados}[Protocolo]|
