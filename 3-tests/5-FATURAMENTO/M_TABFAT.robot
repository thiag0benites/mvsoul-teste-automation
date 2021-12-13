#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Tabela de Faturamento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_TABFAT.robot"
# firefox: robot -v browser:firefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_TABFAT.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_TABFAT.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_TABFAT.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/5-FATURAMENTO/M_TABFAT_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_TABFAT
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMTABFAT-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5FMTABFAT-001:Fluxo Principal" -d ./5-results/SCR5FMTABFAT-001 "3-tests/5-FATURAMENTO/M_TABFAT.robot"
# robot -v browser:firefox -t "SCR5FMTABFAT-001:Fluxo Principal" -d ./5-results/SCR5FMTABFAT-001 "3-tests/5-FATURAMENTO/M_TABFAT.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMTABFAT-001"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Cobranças e Tabelas>Tabelas de Faturamento"@nprint @las
    Validar Acesso a Tela |Tabelas de Faturamento|
    Preencher Descricao e Tipo |${dados}[TabelaDesc]| |${dados}[TabelaTip]|
    Salvar Registros |${dados}[MsgSucesso]|