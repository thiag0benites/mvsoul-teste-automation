#################################################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:    robot -v browser:chrome -d ./5-results/SCR6CMCONCOR-001 "3-tests\2-ASSISTENCIAL/M_FICHA_INFECCAO.robot"
# firefox:   robot -v browser:firefox -d ./5-results/SCR6CMCONCOR-001 "3-tests\2-ASSISTENCIAL/M_FICHA_INFECCAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:    robot -v browser:headlesschrome -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2-ASSISTENCIAL/M_FICHA_INFECCAO.robot"
# firefox:   robot -v browser:headlessfirefox -d ./5-results/C_LISTAGEM_CONFERENCIA_RPA_STEPS "3-tests\2-ASSISTENCIAL/M_FICHA_INFECCAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/2-ASSISTENCIAL/M_FICHA_INFECCAO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable *** 
 # Suite registrada no gerenciador de dados
#${suite}    m_gera_remessa_amostra
 # Recebe dados do gerenciador
#${dados}

*** Test Case ***
SCR2AMFICHAINFECCAO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMFICHAINFECCAO-001:Fluxo Principal" -d ./5-results/SCR2AMFICHAINFECCAO-001 "3-tests/2-ASSISTENCIAL/M_FICHA_INFECCAO.robot"
# robot -v browser:firefox -t "SCR2AMFICHAINFECCAO-001:Fluxo Principal" -d ./5-results/SCR2AMFICHAINFECCAO-001 "3-tests/2-ASSISTENCIAL/M_FICHA_INFECCAO.robot"
    #${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMFICHAINFECCAO-001"
    