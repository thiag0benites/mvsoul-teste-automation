#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela M_LOCALIDADE
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/SCR8SMLOCALIDADE-001 "3-tests/8-SERVICO_APOIO/M_LOCALIDADE.robot"
# firefox: robot -v browser:firefox -d ./5-results/SCR8SMLOCALIDADE-001 "3-tests/8-SERVICO_APOIO/M_LOCALIDADE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/SCR8SMLOCALIDADE-001 "3-tests/8-SERVICO_APOIO/M_LOCALIDADE.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR8SMLOCALIDADE-001 "3-tests/8-SERVICO_APOIO/M_LOCALIDADE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/M_LOCALIDADE_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_LOCALIDADE
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SMLOCALIDADE-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SMLOCALIDADE-001:Fluxo Principal" -d ./5-results/SCR8SMLOCALIDADE-001 "3-tests/8-SERVICO_APOIO/M_LOCALIDADE.robot"
# robot -v browser:firefox -t "SCR8SMLOCALIDADE-001:Fluxo Principal" -d ./5-results/SCR8SMLOCALIDADE-001 "3-tests/8-SERVICO_APOIO/M_LOCALIDADE.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMLOCALIDADE-001"
    Acessar |${dados}[tela]|@nprint @las
    Clicar no botao[Adicionar]
    Preencher Campos Descricao|${dados}[descricao]|, Responsavel|${dados}[responsavel]|
    Clicar no botao[Salvar]
    ContextoSteps.Valida Mensagem        ${msgRecebida}          ${dados}[msgEsperada]