#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_LACTO_AIH_P321
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_LACTO_AIH_P321 "3-tests/5-FATURAMENTO/M_LACTO_AIH_P321.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_LACTO_AIH_P321 "3-tests/5-FATURAMENTO/M_LACTO_AIH_P321.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_LACTO_AIH_P321 "3-tests/5-FATURAMENTO/M_LACTO_AIH_P321.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_LACTO_AIH_P321 "3-tests/5-FATURAMENTO/M_LACTO_AIH_P321.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/5-FATURAMENTO/M_LACTO_AIH_P321_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_LACTO_AIH_P321
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMLACTOIAHP321-001:Fluxo principal
# robot -v browser:chrome -t "SCR5FMLACTOIAHP321-001:Fluxo principal" -d ./5-results/M_LACTO_AIH_P321 "3-tests/5-FATURAMENTO/M_LACTO_AIH_P321.robot"
# robot -v browser:firefox -t "SCR5FMLACTOIAHP321-001:Fluxo principal" -d ./5-results/M_LACTO_AIH_P321 "3-tests/5-FATURAMENTO/M_LACTO_AIH_P321.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMLACTOIAHP321-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Pesquisar pelo codigo do atendimento 
    Executar a pesquisa
    Ir para a aba Conta AIH 
    Adicionar novo registro na tabela 
    Preencher os campos da tabela  
    Salvar os dados inseridos 
    Validar mensagem |${dados}[MsgEsperada]|
    Ver Itens da Conta 
    Ver criticas da conta