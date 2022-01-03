#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Gerenciamento de Chamados
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\R_INT_NUTRICAO.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\R_INT_NUTRICAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\R_INT_NUTRICAO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\R_INT_NUTRICAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/R_INT_NUTRICAO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          r_int_nutricao
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SRINTNUTRICAO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SRINTNUTRICAO-001:Fluxo Principal" -d ./5-results/SCR8SRINTNUTRICAO-001 "3-tests/8-SERVICO_APOIO/R_INT_NUTRICAO.robot"
# robot -v browser:firefox -t "SCR8SRINTNUTRICAO-001:Fluxo Principal" -d ./5-results/SCR8SRINTNUTRICAO-001 "3-tests/8-SERVICO_APOIO/R_INT_NUTRICAO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SRINTNUTRICAO-001"
    Acessar a tela "Serviços de Apoio>Nutrição e Dietética>Relatórios>Operacionais>Censo por Copa"@nprint @las
    Selecionar Parametros de Impressao |${dados}[Copa]| |${dados}[UnidInternacao]|
    Realizar Impressao do Relatorio