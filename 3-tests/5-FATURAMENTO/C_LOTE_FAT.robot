#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela C_LOTE_FAT
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/C_LOTE_FAT "3-tests/5-FATURAMENTO/C_LOTE_FAT.robot"
# firefox: robot -v browser:firefox -d ./5-results/C_LOTE_FAT "3-tests/5-FATURAMENTO/C_LOTE_FAT.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/C_LOTE_FAT "3-tests/5-FATURAMENTO/C_LOTE_FAT.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/C_LOTE_FAT "3-tests/5-FATURAMENTO/C_LOTE_FAT.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/5-FATURAMENTO/C_LOTE_FAT_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            C_LOTE_FAT
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FCLOTEFAT-001:Fluxo principal
# robot -v browser:chrome -t "SCR5FCLOTEFAT-001:Fluxo principal" -d ./5-results/C_LOTE_FAT "3-tests/5-FATURAMENTO/C_LOTE_FAT.robot"
# robot -v browser:firefox -t "SCR5FCLOTEFAT-001:Fluxo principal" -d ./5-results/C_LOTE_FAT  "3-tests/5-FATURAMENTO/C_LOTE_FAT.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FCLOTEFAT-001"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Faturas e Remessas"@nprint @las
    Preencher os campos da tabela |${dados}[convenio]|,|${dados}[descricao]|,|${dados}[competencia]|
    Preencher a data de abertura na tabela |${dados}[dataAbertura]|
    Clicar no botao Salvar do menu
    Validar Mensagem |${dados}[mensagem]|
