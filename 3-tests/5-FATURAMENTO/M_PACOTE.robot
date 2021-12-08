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
Resource            ../../1-resources/5-FATURAMENTO/M_PACOTE_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_PACOTE
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMPACOTE-001:Fluxo principal
# robot -v browser:chrome -t "SCR5FMPACOTE-001:Fluxo principal" -d ./5-results/M_PACOTE "3-tests/5-FATURAMENTO/M_PACOTE.robot"
# robot -v browser:firefox -t "SCR5FMPACOTE-001:Fluxo principal" -d ./5-results/M_PACOTE "3-tests/5-FATURAMENTO/M_PACOTE.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMPACOTE-001"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Cobranças e Tabelas>Pacotes"@nprint @las
    Clicar no botao Pesquisar
    Clicar no botao Executar 
    Clicar na aba Excecoes
    Usuario devera preencher os campos|${dados}[grupoProced]|,|${dados}[procedimento]|,|${dados}[setor]|,|${dados}[acomodacao]|
    Clicar no botao Salvar
    Validar cadastro realizado |${dados}[mensagem]|