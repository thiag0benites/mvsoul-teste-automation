#################################################################################################################################################################
# Autor: Marcos Costa
# Esse caso de teste tem como objetivo a inserção de contas em remessas de convênios sem agrupamento.
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -t "SCR5FMLOTEFAT001:Fluxo Principal" -d ./5-results/SCR5FMLOTEFAT001 "3-tests/5-FATURAMENTO/M_LOTE_FAT.robot"
# chrome:         robot -v browser:firefox -t "SCR5FMLOTEFAT001:Fluxo Principal" -d ./5-results/SCR5FMLOTEFAT001 "3-tests/5-FATURAMENTO/M_LOTE_FAT.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -t "SCR5FMLOTEFAT001:Fluxo Principal" -d ./5-results/SCR5FMLOTEFAT001 "3-tests/5-FATURAMENTO/M_LOTE_FAT.robot"
# chrome:         robot -v browser:headlessfirefox -t "SCR5FMLOTEFAT001:Fluxo Principal" -d ./5-results/SCR5FMLOTEFAT001 "3-tests/5-FATURAMENTO/M_LOTE_FAT.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/5-FATURAMENTO/M_LOTE_FAT_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
# Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}         m_lote_fat
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
# SMF-975
SCR5FMLOTEFAT001:Fluxo Principal
    # robot -v browser:chrome -t "SCR5FMLOTEFAT001:Fluxo Principal" -d ./5-results/SCR5FMLOTEFAT001 "3-tests/5-FATURAMENTO/M_LOTE_FAT.robot"
    # robot -v browser:firefox -t "SCR5FMLOTEFAT001:Fluxo Principal" -d ./5-results/SCR5FMLOTEFAT001 "3-tests/5-FATURAMENTO/M_LOTE_FAT.robot"
    ${dados}  Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMLOTEFAT001"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Faturas e Remessas"@nprint @las
    Informar no Campo <Convenio> |${dados}[Conv]| <Desc. Fatura> |${dados}[DescFat]| <Competencia> |${dados}[Comp]|
    Clicar no Botao <Salvar> |${dados}[Salvar]|