#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Teste da tela M_WORKFLOW_PENDENCIAS_PSSD
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_WORKFLOW_PENDENCIAS_PSSD.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_WORKFLOW_PENDENCIAS_PSSD.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_WORKFLOW_PENDENCIAS_PSSD.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_WORKFLOW_PENDENCIAS_PSSD.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_WORKFLOW_PENDENCIAS_PSSD_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            M_WORKFLOW_PENDENCIAS_PSSD
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMWORKFLOWPENDENCIASPSSD-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMWORKFLOWPENDENCIASPSSD-001:Fluxo Principal" -d ./5-results/M_WORKFLOW_PENDENCIAS_PSSD "3-tests/2-ASSISTENCIAL/M_WORKFLOW_PENDENCIAS_PSSD.robot"
# robot -v browser:firefox -t "SCR2AMWORKFLOWPENDENCIASPSSD-001:Fluxo Principal" -d ./5-results/M_WORKFLOW_PENDENCIAS_PSSD "3-tests/2-ASSISTENCIAL/M_WORKFLOW_PENDENCIAS_PSSD.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMWORKFLOWPENDENCIASPSSD-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    #Navegar entre as abas do painel operacional de pendencias 


    