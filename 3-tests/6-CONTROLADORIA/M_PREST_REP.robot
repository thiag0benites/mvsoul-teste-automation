#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Geração de Repasse
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_PREST_REP.robot"
# firefox: robot -v browser:firefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_PREST_REP.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_PREST_REP.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_PREST_REP.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/6-CONTROLADORIA/M_PREST_REP_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_prest_rep
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6CMPRESTREP-001:Fluxo Principal
# robot -v browser:chrome -t "SCR6CMPRESTREP-001:Fluxo Principal" -d ./5-results/SCR6CMPRESTREP-001 "3-tests/6-CONTROLADORIA/M_PREST_REP.robot"
# robot -v browser:firefox -t "SCR6CMPRESTREP-001:Fluxo Principal" -d ./5-results/SCR6CMPRESTREP-001 "3-tests/6-CONTROLADORIA/M_PREST_REP.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6CMPRESTREP-001"
    Acessar a tela "Controladoria>Repasse Médico>Tabelas>Regras>Dados do Repasse do Prestador"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Pesquisar Criterios de Selecao |${dados}[Prestador]|
    Preencher Campos Aba Geral |${dados}[RepPrestador]| |${dados}[RepSIA]| |${dados}[RepSIH]| |${dados}[Fornecedor]| |${dados}[QuantCH]|
    Clicar Botao Salvar |${dados}[MensagemSucesso]|
    #Retornar massa de dados para status inicial do teste
    Alterar Campo Aba Geral |${dados}[RepPrestadorAltera]|
    Clicar Botao Salvar |${dados}[MensagemSucesso]|

