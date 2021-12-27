#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Teste da tela M_CONFIG_PAGU
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_CONFIG_PAGU.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_CONFIG_PAGU.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_CONFIG_PAGU.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_CONFIG_PAGU.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/2-ASSISTENCIAL/M_CONFIG_PAGU_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_config_pagu
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMCONFIGPAGU-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMCONFIGPAGU-001:Fluxo Principal" -d ./5-results/M_CONFIG_PAGU "3-tests/2-ASSISTENCIAL/M_CONFIG_PAGU.robot"
# robot -v browser:firefox -t "SCR2AMCONFIGPAGU-001:Fluxo Principal" -d ./5-results/M_CONFIG_PAGU "3-tests/2-ASSISTENCIAL/M_CONFIG_PAGU.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMCONFIGPAGU-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Ir para a Aba Geral
    Ir para a Aba Setor
    Visualizar a Prescricao de enfermagem na Aba Setor
    Visualizar Avaliacao na Aba Setor
    Visualizar Balanco Hidrico na Aba Setor
    Ir para a Aba Prescricao Medica
    Ir para a Diagnostico
    Ir para a Aba Parecer
    Ir para a aba Aprazamento e checagem
    Ir para a aba Portal
    Ir para a aba Empresas externas
