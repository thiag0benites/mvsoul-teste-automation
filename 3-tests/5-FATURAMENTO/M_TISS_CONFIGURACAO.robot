#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_TISS_SOLICITACAO
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_TISS_CONFIGURACAO "3-tests/5-FATURAMENTO/M_TISS_CONFIGURACAO.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_TISS_CONFIGURACAO "3-tests/5-FATURAMENTO/M_TISS_CONFIGURACAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_TISS_CONFIGURACAO "3-tests/5-FATURAMENTO/M_TISS_CONFIGURACAO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_TISS_CONFIGURACAO "3-tests/5-FATURAMENTO/M_TISS_CONFIGURACAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/5-FATURAMENTO/M_TISS_CONFIGURACAO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_TISS_CONFIGURACAO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMTISSCONFIGURACAO-001:Fluxo principal
# robot -v browser:chrome -t "SCR5FMTISSCONFIGURACAO-001:Fluxo principal" -d ./5-results/M_TISS_CONFIGURACAO "3-tests/5-FATURAMENTO/M_TISS_CONFIGURACAO.robot"
# robot -v browser:firefox -t "SCR5FMTISSCONFIGURACAO-001:Fluxo principal" -d ./5-results/M_TISS_CONFIGURACAO "3-tests/5-FATURAMENTO/M_TISS_CONFIGURACAO.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMTISSCONFIGURACAO-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Minimizar notificacao
    Executar pesquisa 
    Clicar em ok 
    Clicar no proximo registro 
    Clicar em ok 
    Clicar em detalhamento
    Preencher servico e detalhamento do servico 
    Pesquisar os campos preenchidos 
    Preencher o campo Preencher e valor fixo |${dados}[valorPreencher]|,|${dados}[valorFixo]|
    Salvar modificacoes
    Validar mensagem ao salvar |${dados}[MsgEsperada]|