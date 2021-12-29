#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_TISS_SOLICITACAO
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_TISS_SOLICITACAO "3-tests/5-FATURAMENTO/M_TISS_SOLICITACAO.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_TISS_SOLICITACAO "3-tests/5-FATURAMENTO/M_TISS_SOLICITACAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_TISS_SOLICITACAO "3-tests/5-FATURAMENTO/M_TISS_SOLICITACAO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_TISS_SOLICITACAO "3-tests/5-FATURAMENTO/M_TISS_SOLICITACAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/5-FATURAMENTO/M_TISS_SOLICITACAO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_TISS_SOLICITACAO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMTISSSOLICITACAO-001:Fluxo principal
# robot -v browser:chrome -t "SCR5FMTISSSOLICITACAO-001:Fluxo principal" -d ./5-results/M_TISS_SOLICITACAO "3-tests/5-FATURAMENTO/M_TISS_SOLICITACAO.robot"
# robot -v browser:firefox -t "SCR5FMTISSSOLICITACAO-001:Fluxo principal" -d ./5-results/M_TISS_SOLICITACAO "3-tests/5-FATURAMENTO/M_TISS_SOLICITACAO.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMTISSSOLICITACAO-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Preencher o campo atendimento |${dados}[codAtendimento]|
    Preencher a tabela de procedimento |${dados}[procedimento]|
    Clicar no botao Criar Guia 
    Validar a criacao da guia na tabela |${dados}[dado]|
    Clicar no botao autorizar 
    Clicar no botao Nao
