#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Cadastro de Serviços
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SERVI.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SERVI.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SERVI.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SERVI.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/8-SERVICO_APOIO/M_SERVI_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_centro_custo
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SMSERVI-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SMSERVI-001:Fluxo Principal" -d ./5-results/SCR8SMSERVI-001 "3-tests/8-SERVICO_APOIO/M_SERVI.robot"
# robot -v browser:firefox -t "SCR8SMSERVI-001:Fluxo Principal" -d ./5-results/SCR8SMSERVI-001 "3-tests/8-SERVICO_APOIO/M_SERVI.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMSERVI-001"
    Acessar a tela "Serviços de Apoio>Manutenção>Ordem Serviço>Recebimento de Solicitações"@nprint @las
    Validar Acesso a Tela |Cadastro de Serviços|