#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_PACOTE
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_PACOTE "3-tests/5-FATURAMENTO/M_PACOTE.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_PACOTE "3-tests/5-FATURAMENTO/M_PACOTE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_PACOTE "3-tests/5-FATURAMENTO/M_PACOTE.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_PACOTE "3-tests/5-FATURAMENTO/M_PACOTE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/bd/BancoDados.robot
Resource            ../../1-resources/ContextoSteps.robot 
Resource            ../../1-resources/5-FATURAMENTO/M_PACOTE_STEPS.robot
Resource            ../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_PACOTE
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-2647:Cobrancas e Tabelas
# robot -v browser:chrome -t "SMF-2647:Cobrancas e Tabelas" -d ./5-results/SMF-2647 "3-tests/5-FATURAMENTO/M_PACOTE.robot"
# robot -v browser:firefox -t "SMF-2647:Cobrancas e Tabelas" -d ./5-results/SMF-2647 "3-tests/5-FATURAMENTO/M_PACOTE.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-2647"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Cobranças e Tabelas>Pacotes"@nprint @las
    Clicar no botão Pesquisar
    Clicar no botão Executar 
    Clicar na aba Exceções
    Usuário deverá preencher os campos|${dados}[grupoProced]|,|${dados}[procedimento]|,|${dados}[setor]|,|${dados}[acomodacao]|
    Clicar no botão Salvar do menu