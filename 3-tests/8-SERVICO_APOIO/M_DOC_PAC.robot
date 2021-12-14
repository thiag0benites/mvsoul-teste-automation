#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Protocolos de Matricula no Same
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\MDOCPAC.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\MDOCPAC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\MDOCPAC.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\MDOCPAC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/M_DOC_PAC_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_DOC_PAC
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SMDOCPAC-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SMDOCPAC-001:Fluxo Principal" -d ./5-results/SCR8SMDOCPAC-001 "3-tests/8-SERVICO_APOIO/M_DOC_PAC.robot"
# robot -v browser:firefox -t "SCR8SMDOCPAC-001:Fluxo Principal" -d ./5-results/SCR8SMDOCPAC-001 "3-tests/8-SERVICO_APOIO/M_DOC_PAC.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMDOCPAC-001"
    Acessar a tela "Serviços de Apoio>Serviço Arquivo Médico>Pacientes>Manutenção de Documentos"@nprint @las
    Preencher Same |${dados}[SAME]|
    Validar Acesso a Tela |Matricula no Same|
    Preencher Matricula e Pesquisar |${dados}[Matricula]|
    Imprimir e validar Relatorio