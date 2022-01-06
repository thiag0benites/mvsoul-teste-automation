#################################################################################################################################################################
# Autor: Letícia Andrade
# Descrição: Teste da tela M_VAL_PROCED
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -t "SCR5FMVALPROCED-001:Fluxo Principal" -d ./5-results/SCR5FMVALPROCED-001 "3-tests/5-FATURAMENTO/M_VAL_PROCED.robot"
# firefox: robot -v browser:firefox -t "SCR5FMVALPROCED-001:Fluxo Principal" -d ./5-results/SCR5FMVALPROCED-001 "3-tests/5-FATURAMENTO/M_VAL_PROCED.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_VAL_PROCED "3-tests/5-FATURAMENTO/M_VAL_PROCED.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_VAL_PROCED "3-tests/5-FATURAMENTO/M_VAL_PROCED.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/5-FATURAMENTO/M_VAL_PROCED_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessao
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
#Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_VAL_PROCED
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMVALPROCED-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5FMVALPROCED-001:Fluxo Principal" -d ./5-results/M_VAL_PROCED "3-tests/5-FATURAMENTO/M_VAL_PROCED.robot"
# robot -v browser:firefox -t "SCR5FMVALPROCED-001:Fluxo Principal" -d ./5-results/M_VAL_PROCED "3-tests/5-FATURAMENTO/M_VAL_PROCED.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMVALPROCED-001"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Valores dos Procedimentos>Procedimentos"@nprint @las
    Inserir informacoes nos seguintes campos |${dados}[CodProcedimento]|,|${dados}[Procedimento]|,|${dados}[CodTabela]|,|${dados}[Vigencia]|,|${dados}[VlHonorario]|,|${dados}[VlOperacional]|
    Clique no botao Salvar
    Valida mensagem ao salvar |${dados}[MsgEsperada]|