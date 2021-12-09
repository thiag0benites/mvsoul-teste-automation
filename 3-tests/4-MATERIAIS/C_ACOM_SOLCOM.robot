#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela    Acompanhamento de Solicitacoes de Compras
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_PRODUTO.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_PRODUTO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_PRODUTO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_PRODUTO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/C_ACOM_SOLCOM_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          C_ACOM_SOLCOM
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MCACOMSOLCOM-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MCACOMSOLCOM-001:Fluxo Principal" -d ./5-results/SCR4MCACOMSOLCOM-001 "3-tests/4-MATERIAIS/C_ACOM_SOLCOM.robot"
# robot -v browser:firefox -t "SCR4MCACOMSOLCOM-001:Fluxo Principal" -d ./5-results/SCR4MCACOMSOLCOM-001 "3-tests/4-MATERIAIS/C_ACOM_SOLCOM.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MCACOMSOLCOM-001"
    Acessar a tela "Materiais e Logística>Compras>Consultas>Acompanhamento de Compras>Acompanhamento de Solicitação de Compras"@nprint @las
    Validar Acesso a Tela |Acompanhamento de Solicitações de Compras|
    Preencher Data Inicial |${dados}[DataIni]|
    Preencher Data Final
    Pesquisar e Validar Pesquisa |${dados}[Estoque]|