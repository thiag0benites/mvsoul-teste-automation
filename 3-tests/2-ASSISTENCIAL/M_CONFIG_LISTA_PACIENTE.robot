#################################################################################################################################################################
# Autor: Marcos Costa
# Descrição: O Caso de Teste tem como Objetivo Configurar Lista de Paciente do Tipo Internação.
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -t "SCR2AMCONFIGLISTAPACIENTEA001:Fluxo Principal" -d ./5-results/SCR2AMCONFIGLISTAPACIENTEA001 "3-tests/2-ASSISTENCIAL/M_CONFIG_LISTA_PACIENTE.robot"
# chrome:         robot -v browser:firefox -t "SCR2AMCONFIGLISTAPACIENTEA001:Fluxo Principal" -d ./5-results/SCR2AMCONFIGLISTAPACIENTEA001 "3-tests/2-ASSISTENCIAL/M_CONFIG_LISTA_PACIENTE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -t "SCR2AMCONFIGLISTAPACIENTEA001:Fluxo Principal" -d ./5-results/SCR2AMCONFIGLISTAPACIENTEA001 "3-tests/2-ASSISTENCIAL/M_CONFIG_LISTA_PACIENTE.robot"
# chrome:         robot -v browser:headlessfirefox -t "SCR2AMCONFIGLISTAPACIENTEA001:Fluxo Principal" -d ./5-results/SCR2AMCONFIGLISTAPACIENTEA001 "3-tests/2-ASSISTENCIAL/M_CONFIG_LISTA_PACIENTE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/2-ASSISTENCIAL/M_CONFIG_LISTA_PACIENTE_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
# Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}         m_config_lista_paciente
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
# 
SCR2AMCONFIGLISTAPACIENTEA001:Fluxo Principal
    # robot -v browser:chrome -t "SCR2AMCONFIGLISTAPACIENTEA001:Fluxo Principal" -d ./5-results/SCR2AMCONFIGLISTAPACIENTEA001 "3-tests/2-ASSISTENCIAL/M_CONFIG_LISTA_PACIENTE.robot"
    # robot -v browser:firefox -t "SCR2AMCONFIGLISTAPACIENTEA001:Fluxo Principal" -d ./5-results/SCR2AMCONFIGLISTAPACIENTEA001 "3-tests/2-ASSISTENCIAL/M_CONFIG_LISTA_PACIENTE.robot"
    # ${dados}  Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMCONFIGLISTAPACIENTEA001"
    Acessa a Tela Pela Busca |M_CONFIG_LISTA_PACIENTE||Lista de Paciente| @las
    Informa na Tela Lista de Paciente <Empresa> |5| <TpInternacao> |Internação| <TpPrestador> |Médico| <Person> |Marcos WATI| <Ordem> |2| <Segundo> |60| <MSG> |Registros gravados com sucesso.|