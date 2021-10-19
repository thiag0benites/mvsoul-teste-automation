#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Revisão de Cirurgias
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_REVISAO_CIRURGIA.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_REVISAO_CIRURGIA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_REVISAO_CIRURGIA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_REVISAO_CIRURGIA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/C_REVISAO_CIRURGIA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2A-001:Revisar Cirurgia
# robot -v browser:chrome -t "SCR2A-001:Revisar Cirurgia" -d ./5-results/SCR2A-001 "3-tests/2-ASSISTENCIAL/C_REVISAO_CIRURGIA.robot"
# robot -v browser:firefox -t "SCR2A-001:Revisar Cirurgia" -d ./5-results/SCR2A-001 "3-tests/2-ASSISTENCIAL/C_REVISAO_CIRURGIA.robot"
    Acessar a tela "Atendimento>"@nprint @las