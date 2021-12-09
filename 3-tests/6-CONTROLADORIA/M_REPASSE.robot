#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Geração de Repasse
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_REPASSE.robot"
# firefox: robot -v browser:firefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_REPASSE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_REPASSE.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_REPASSE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/6-CONTROLADORIA/M_REPASSE_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_repasse
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6CMREPASSE-001:Fluxo Principal
# robot -v browser:chrome -t "SCR6CMREPASSE-001:Fluxo Principal" -d ./5-results/SCR6CMREPASSE-001 "3-tests/6-CONTROLADORIA/M_REPASSE.robot"
# robot -v browser:firefox -t "SCR6CMREPASSE-001:Fluxo Principal" -d ./5-results/SCR6CMREPASSE-001 "3-tests/6-CONTROLADORIA/M_REPASSE.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6CMREPASSE-001"
    Acessar a tela "Controladoria>Repasse Médico>Repasse>Geração>Convênio"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Parametros do Repasse |${dados}[Competencia]| |${dados}[Descricao]| |${dados}[Convenio]| |${dados}[BaseRepasse]|
    Clicar Botao Confirmar |${dados}[NomeTelaRepasse]|
    Confirmar Repasse |${dados}[MsgGravacao]| |${dados}[MsgRepasseSucesso]| |${dados}[MsgValorFixo]| |${dados}[MsgConcluido]| |${dados}[NomeTela]|
