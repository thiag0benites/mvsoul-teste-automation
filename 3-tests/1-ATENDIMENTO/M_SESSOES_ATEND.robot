#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Teste da tela M_SESSOES_ATEND
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\2-ASSISTENCIAL\M_SESSOES_ATEND.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\2-ASSISTENCIAL\M_SESSOES_ATEND.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\2-ASSISTENCIAL\M_SESSOES_ATEND.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\2-ASSISTENCIAL\M_SESSOES_ATEND.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/M_SESSOES_ATEND_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_SESSOES_ATEND
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMSESSOESATEND-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMSESSOESATEND-001:Fluxo Principal" -d ./5-results/M_SESSOES_ATEND "3-tests/1-ATENDIMENTO/M_SESSOES_ATEND.robot"
# robot -v browser:firefox -t "SCR2AMSESSOESATEND-001:Fluxo Principal" -d ./5-results/M_SESSOES_ATEND "3-tests/1-ATENDIMENTO/M_SESSOES_ATEND.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMSESSOESATEND-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher campo atendimento |${dados}[codAtend]|
    Executar pesquisa de sessoes
    Clicar em Ok
    Preencher os campos da tabela |${dados}[data]|,|${dados}[hora]|,|${dados}[quantidade]|
    Salvar alteracoes realizadas
    Validar mensagem ao salvar alteracoes |${dados}[MsgEsperada]|