#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Gerenciamento de Chamados
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_GERENCIA_CHAMADO.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_GERENCIA_CHAMADO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_GERENCIA_CHAMADO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_GERENCIA_CHAMADO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/M_GERENCIA_CHAMADO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_gerencia_chamado
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SMGERENCIACHAMADO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SMGERENCIACHAMADO-001:Fluxo Principal" -d ./5-results/SCR8SMGERENCIACHAMADO-001 "3-tests/8-SERVICO_APOIO/M_GERENCIA_CHAMADO.robot"
# robot -v browser:firefox -t "SCR8SMGERENCIACHAMADO-001:Fluxo Principal" -d ./5-results/SCR8SMGERENCIACHAMADO-001 "3-tests/8-SERVICO_APOIO/M_GERENCIA_CHAMADO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMGERENCIACHAMADO-001"
    Acessar a tela "Serviços de Apoio>Serviço Atendimento Cliente>Atendimento>Gerenciamento de Chamados"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Pesquisar Chamados Abertos |${dados}[Situacao]|
    Finalizar Chamado |${dados}[Prioridade]| |${dados}[Satisfatorio]| |${dados}[Fidelidade]| |${dados}[MensagemSucesso]|