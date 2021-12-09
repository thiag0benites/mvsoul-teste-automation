#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Produtos do Estoque
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\C_ACOM_PROD.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\C_ACOM_PROD.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\C_ACOM_PROD.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\C_ACOM_PROD.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/C_ACOM_PROD_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          c_acom_prod
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MCACOMPROD-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MCACOMPROD-001:Fluxo Principal" -d ./5-results/SCR4MCACOMPROD-001 "3-tests/4-MATERIAIS/C_ACOM_PROD.robot"
# robot -v browser:firefox -t "SCR4MCACOMPROD-001:Fluxo Principal" -d ./5-results/SCR4MCACOMPROD-001 "3-tests/4-MATERIAIS/C_ACOM_PROD.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MCACOMPROD-001"
    Acessar a tela "Materiais e Logística>Compras>Consultas>Acompanhamento de Compras>Acompanhamento de Compras por Produto"@nprint @las
    Pesquisar Compras |${dados}[Produto]| |${dados}[Estoque]| |${dados}[DtInicial]| |${dados}[DtFinal]|
    Validar Resultado Pesquisa |${dados}[CdSolicitacao1]| |${dados}[CdSolicitacao2]|
