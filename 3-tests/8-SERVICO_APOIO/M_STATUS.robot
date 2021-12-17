#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Refeição com Status Aberto
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_STATUS.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_STATUS.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_STATUS.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_STATUS.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/M_STATUS_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_status
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SMSTATUS-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SMSTATUS-001:Fluxo Principal" -d ./5-results/SCR8SMSTATUS-001 "3-tests/8-SERVICO_APOIO/M_STATUS.robot"
# robot -v browser:firefox -t "SCR8SMSTATUS-001:Fluxo Principal" -d ./5-results/SCR8SMSTATUS-001 "3-tests/8-SERVICO_APOIO/M_STATUS.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMSTATUS-001"
    Acessar a tela "Serviços de Apoio>Nutrição e Dietética>Movimentação>Status da Refeição"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Selecionar Refeicao |${dados}[Refeicao]|
    Salvar Refeicao |${dados}[MensagemSucesso]| |${dados}[Refeicao]|
    # Retornar massa de dados para status inicial do teste
    Selecionar Refeicao |${dados}[RefeicaoAltera]|
    Salvar Refeicao |${dados}[MensagemSucesso]| |${dados}[RefeicaoAltera]|
