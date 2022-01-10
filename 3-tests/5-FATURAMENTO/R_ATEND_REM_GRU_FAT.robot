#################################################################################################################################################################
# Autor: Fernando Lima
# Decrição: Teste da tela Consulta APAC
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\R_ATEND_REM_GRU_FAT.robot"
# firefox: robot -v browser:firefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\R_ATEND_REM_GRU_FAT.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\R_ATEND_REM_GRU_FAT.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\R_ATEND_REM_GRU_FAT.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/5-FATURAMENTO/R_ATEND_REM_GRU_FAT_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados R_ATEND_REM_GRU_FAT
${suite}          r_atend_rem_gru_fat
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1ARATENDREMGRUFAT-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1ARATENDREMGRUFAT-001:Fluxo Principal" -d ./5-results/SCR1ARATENDREMGRUFAT-001 "3-tests/5-FATURAMENTO/R_ATEND_REM_GRU_FAT.robot"
# robot -v browser:firefox -t "SCR1ARATENDREMGRUFAT-001:Fluxo Principal" -d ./5-results/SCR1ARATENDREMGRUFAT-001 "3-tests/5-FATURAMENTO/R_ATEND_REM_GRU_FAT.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1ARATENDREMGRUFAT-001"
    Acessa a Tela Pela Busca |r_atend_rem_gru_fat||Atendimentos da Remessa por Grupo / Procedimento| @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Click Botao Pesquisar|${dados}[NRemessa]|
