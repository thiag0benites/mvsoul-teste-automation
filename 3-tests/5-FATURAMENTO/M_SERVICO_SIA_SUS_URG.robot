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
Resource            ../../1-resources/5-FATURAMENTO/M_SERVICO_SIA_SUS_URG_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_SERVICO_SIA_SUS_URG
# Recebe dados do gerenciador
${dados}

*** Test Case *** 
SCR5FMSERVICOSIASUSURG-001:Fluxo principal
# robot -v browser:chrome -t "SCR5FMSERVICOSIASUSURG-001:Fluxo principal" -d ./5-results/M_SERVICO_SIA_SUS_URG "3-tests/5-FATURAMENTO/M_SERVICO_SIA_SUS_URG.robot"
# robot -v browser:firefox -t "SCR5FMSERVICOSIASUSURG-001:Fluxo principal" -d ./5-results/M_SERVICO_SIA_SUS_URG "3-tests/5-FATURAMENTO/M_SERVICO_SIA_SUS_URG.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMSERVICOSIASUSURG-001"
    Acessar a tela "Faturamento>Faturamento Ambulatorial SUS (BPA e APAC)>Tabelas>Integrações>Serviço de Urgência Emergência/Procedimento"@nprint @las
    Adicionar servico
    Preencher a tabela para adicionar um servico |${dados}[servico]|,|${dados}[procedimento]|,|${dados}[cbo]|
    Salvar cadastro do servico
    Validar cadastro realizado do servico |${dados}[MsgEsperada]|