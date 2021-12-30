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
Resource          ../../1-resources/4-MATERIAIS/R_FICHA_KARDEX_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          R_FICHA_KARDEX
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MRRFICHAKARDEX-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MRRFICHAKARDEX-001:Fluxo Principal" -d ./5-results/SCR4MRRFICHAKARDEX-001 "3-tests/4-MATERIAIS/R_FICHA_KARDEX.robot"
# robot -v browser:firefox -t "SCR4MRRFICHAKARDEX-001:Fluxo Principal" -d ./5-results/SCR4MRRFICHAKARDEX-001 "3-tests/4-MATERIAIS/R_FICHA_KARDEX.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MRRFICHAKARDEX-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Relatórios>Operacionais>Análise do Custo Médio dos Produtos>Ficha Kardex"@nprint @las
    #Acessar a tela pela busca |R_FICHA_KARDEX||Ficha Kardex| @las

    Preencher Estoque e Produto |${dados}[Estoque]| |${dados}[Produto]|
    Preencher Intervalo Fixo |${dados}[DataIni]| |${dados}[DataFim]|
    Validar Relatorio