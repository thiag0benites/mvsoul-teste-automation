#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Consulta das Ordens de Serviço
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\C_SOLICITACAO_OS.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\C_SOLICITACAO_OS.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\C_SOLICITACAO_OS.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\C_SOLICITACAO_OS.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/8-SERVICO_APOIO/C_SOLICITACAO_OS_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            C_solicitacao_os
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SCSOLICITACAOOS-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SCSOLICITACAOOS-001:Fluxo Principal" -d ./5-results/SCR8SCSOLICITACAOOS-001 "3-tests/8-SERVICO_APOIO/C_SOLICITACAO_OS.robot"
# robot -v browser:firefox -t "SCR8SCSOLICITACAOOS-001:Fluxo Principal" -d ./5-results/SCR8SCSOLICITACAOOS-001 "3-tests/8-SERVICO_APOIO/C_SOLICITACAO_OS.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SCSOLICITACAOOS-001"
    Acessar a tela "Serviços de Apoio>Manutenção>Consultas>Ordens de Serviço"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Validar Mensagem Solicitando Consulta |${dados}[MensagemEsperadaConsulta]|
    Executar Consulta via F8
    Validar Mensagem Solicitando Filtro |${dados}[MensagemEsperadaFiltro]|

