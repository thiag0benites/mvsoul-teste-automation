#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela    de Cancelamento de Solicitacao
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
Resource          ../../1-resources/4-MATERIAIS/M_SAISET_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_SAISET
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMSAISET-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MMSAISET-001:Fluxo Principal" -d ./5-results/SCR4MMSAISET-001 "3-tests/4-MATERIAIS/M_SAISET.robot"
# robot -v browser:firefox -t "SCR4MMSAISET-001:Fluxo Principal" -d ./5-results/SCR4MMSAISET-001 "3-tests/4-MATERIAIS/M_SAISET.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMSAISET-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Movimentações>Saída de Produtos>De Setores"@nprint @las
    Validar Acesso a Tela |Saída de Produtos para Setor|
    Preencher Estoque e Unidade |${dados}[Estoque]| |${dados}[Unidade]|
    Preencher Produto e Quantidade |${dados}[Produto]| |${dados}[Quantidade]|
    Validar Saida |${dados}[Mensagem]|
