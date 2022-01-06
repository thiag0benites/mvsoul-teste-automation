#################################################################################################################################################################
# Autor: Letícia Andrade
# Descrição: Teste da tela M_TIP_EXA
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -t "SCR5FMTIPEXA-001:Fluxo Principal" -d ./5-results/SCR5FMTIPEXA-001 "3-tests/5-FATURAMENTO/M_TIP_EXA.robot"
# firefox: robot -v browser:firefox -t "SCR5FMTIPEXA-001:Fluxo Principal" -d ./5-results/SCR5FMTIPEXA-001 "3-tests/5-FATURAMENTO/M_TIP_EXA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_TIP_EXA "3-tests/5-FATURAMENTO/M_TIP_EXA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_TIP_EXA "3-tests/5-FATURAMENTO/M_TIP_EXA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/5-FATURAMENTO/M_TIP_EXA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessao
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
#Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_TIP_EXA
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMTIPEXA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5FMTIPEXA-001:Fluxo Principal" -d ./5-results/M_TIP_EXA "3-tests/5-FATURAMENTO/M_TIP_EXA.robot"
# robot -v browser:firefox -t "SCR5FMTIPEXA-001:Fluxo Principal" -d ./5-results/M_TIP_EXA "3-tests/5-FATURAMENTO/M_TIP_EXA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMTIPEXA-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Preencher os campos da tela |${dados}[descricao]|,|${dados}[codSIASUS]|,|${dados}[codEmpresa]|,|${dados}[observacao]|
    Salvar insercao dos dados
    Valida mensagem ao salvar |${dados}[MsgEsperada]|
