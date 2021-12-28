#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_SERVICO_SIA_SUS_URG
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_SERVICO_SIA_SUS_URG "3-tests/5-FATURAMENTO/M_SERVICO_SIA_SUS_URG.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_SERVICO_SIA_SUS_URG "3-tests/5-FATURAMENTO/M_SERVICO_SIA_SUS_URG.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_SERVICO_SIA_SUS_URG "3-tests/5-FATURAMENTO/M_SERVICO_SIA_SUS_URG.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_SERVICO_SIA_SUS_URG "3-tests/5-FATURAMENTO/M_SERVICO_SIA_SUS_URG.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/5-FATURAMENTO/M_REMESSAS_SUS_P321_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_REMESSAS_SUS_P321
# Recebe dados do gerenciador
${dados}

*** Test Case *** 
SCR5FMREMESSASSUSP321-001:Fluxo principal
# robot -v browser:chrome -t "SCR5FMREMESSASSUSP321-001:Fluxo principal" -d ./5-results/M_REMESSAS_SUS_P321 "3-tests/5-FATURAMENTO/M_REMESSAS_SUS_P321.robot"
# robot -v browser:firefox -t "SCR5FMREMESSASSUSP321-001:Fluxo principal" -d ./5-results/M_REMESSAS_SUS_P321 "3-tests/5-FATURAMENTO/M_REMESSAS_SUS_P321.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMREMESSASSUSP321-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Validar dados da remessa |${dados}[remessaDezembro2021]|
    Adicionar nova remessa 
    Preencher os campos da tabela Dados da fatura |${dados}[competencia]|,|${dados}[descricao]|
    Salvar insercao da nova remessa 
    Validar mensagem do cadastro da remessa |${dados}[MsgEsperada]|