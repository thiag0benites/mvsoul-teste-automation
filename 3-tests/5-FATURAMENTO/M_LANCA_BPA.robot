#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Passo a passo da tela de M_LANCA_BPA
#################################################################################################################################################################
# Execução Exemplo:
# chrome:   robot -v browser:chrome -t "SCR5MMLANCABPA-001:Lancamento de BPA" -d ./5-results/SCR6CPLANOCONTABIL-001 "3-tests/5-FATURAMENTO/M_LANCA_BPA.robot"
# firefox:  robot -v browser:firefox -t "SCR5MMLANCABPA-001:Lancamento de BPA" -d ./5-results/SCR6CPLANOCONTABIL-001 "3-tests/5-FATURAMENTO/M_LANCA_BPA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR6CPLANOCONTABIL-001 "3-tests/5-FATURAMENTO/M_LANCA_BPA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR6CPLANOCONTABIL-001 "3-tests/5-FATURAMENTO/M_LANCA_BPA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/5-FATURAMENTO/M_LANCA_BPA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessao
# Suite Teardown    Encerra sessao

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}           M_LANCA_BPA
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5MMLANCABPA-001:Lancamento de BPA
# robot -v browser:chrome -t "SCR5MMLANCABPA-001:Lancamento de BPA" -d ./5-results/SCR5MMLANCABPA-001 "3-tests/5-FATURAMENTO/M_LANCA_BPA.robot"
# robot -v browser:firefox -t "SCR5MMLANCABPA-001:Lancamento de BPA" -d ./5-results/SCR5MMLANCABPA-001 "3-tests/5-FATURAMENTO/M_LANCA_BPA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5MMLANCABPA-001"
    Acessar a tela "Faturamento>Faturamento Ambulatorial SUS (BPA e APAC)>Lançamentos>BPA>Lançamento de BPA"@nprint @las
    Validar Acesso a Tela |${dados}[nomeTela]|
    Preencher Lancamento e Validar |${dados}[fatura]|, |${dados}[remessa]|, |${dados}[paciente]|, |${dados}[data]|, |${dados}[procedimento]| 
    Preencher e Validar |${dados}[setor]|, |${dados}[setorProd]|, |${dados}[prestador]|, |${dados}[qtdDe]|, |${dados}[servico]|, |${dados}[ups]|
    Salvar e validar mensagem |${dados}[mensagemSucesso]|