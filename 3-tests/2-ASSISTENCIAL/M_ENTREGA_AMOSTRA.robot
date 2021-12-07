#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Confirmação de Entrega de Amostra
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ENTREGA_AMOSTRA.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ENTREGA_AMOSTRA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ENTREGA_AMOSTRA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ENTREGA_AMOSTRA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_ENTREGA_AMOSTRA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_entrega_amostra
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMENTREGAAMOSTRA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMENTREGAAMOSTRA-001:Fluxo Principal" -d ./5-results/SCR2AMENTREGAAMOSTRA-001 "3-tests/2-ASSISTENCIAL/M_ENTREGA_AMOSTRA.robot"
# robot -v browser:firefox -t "SCR2AMENTREGAAMOSTRA-001:Fluxo Principal" -d ./5-results/SCR2AMENTREGAAMOSTRA-001 "3-tests/2-ASSISTENCIAL/M_ENTREGA_AMOSTRA.robot"
    #${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMENTREGAAMOSTRA-001"
    Acessa a Tela Pela Busca |M_ENTREGA_AMOSTRA||Confirmação de Entrega de Amostra| @las
    #Acessar a tela "Diagnóstico e Terapia>Laboratório de Análises Clínicas>Atendimento>Confirmação de Entrega de Amostra"@nprint @las
    Pesquisar Amostras
    Pegar Codigo Amostra Nao Entregue
    Sleep  5




