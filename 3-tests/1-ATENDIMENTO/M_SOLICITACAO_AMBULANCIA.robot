#################################################################################################################################################################
# Autor: Denner Ferreira
# Decrição: Teste da tela M_SOLICITACAO_AMBULANCIA
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_SOLICITACAO_AMBULANCIA.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_SOLICITACAO_AMBULANCIA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_SOLICITACAO_AMBULANCIA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_SOLICITACAO_AMBULANCIA.robot"
#################################################################################################################################################################
*** Settings ***
Resource            ../../1-resources/1-ATENDIMENTO/M_SOLICITACAO_AMBULANCIA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            M_SOLICITACAO_AMBULANCIA
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMSOLICITACAOAMBULANCIA-001:Solicitacao Ambulancia
# robot -v browser:chrome -t "SCR1AMSOLICITACAOAMBULANCIA-001:Solicitacao Ambulancia" -d ./5-results/SCR1AMSOLICITACAOAMBULANCIA-001 "3-tests/1-ATENDIMENTO/M_SOLICITACAO_AMBULANCIA.robot"
# robot -v browser:firefox -t "SCR1AMSOLICITACAOAMBULANCIA-001:Solicitacao Ambulancia" -d ./5-results/SCR1AMSOLICITACAOAMBULANCIA-001 "3-tests/1-ATENDIMENTO/M_SOLICITACAO_AMBULANCIA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMSOLICITACAOAMBULANCIA-001"
    Acessar a tela "Atendimento>Internação>Gestão de Ambulância>Solicitação de Ambulância"@nprint @las
    Validar Acesso a Tela |${dados}[nomeTela]|
    Preencher solicitacao e validar campos |${dados}[agendarPara]|, |${dados}[tipoSolicitacao]|, |${dados}[tipoAmbulancia]|, |${dados}[posicaoDoPaciente]|, |${dados}[setorDeBusca]|, |${dados}[unidadeDeInternacao]|, |${dados}[leito]|, |${dados}[paciente]|, |${dados}[trajeto]|
    Salvar solicitacao e validar mensagem |${dados}[mensagemSucesso]|
