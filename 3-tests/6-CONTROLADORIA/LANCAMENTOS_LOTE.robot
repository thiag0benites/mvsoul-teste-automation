#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/LANCAMENTOS_LOTE "3-tests\6-CONTROLADORIA\LANCAMENTOS_LOTE.robot"
# chrome:         robot -v browser:firefox -d ./5-results/LANCAMENTOS_LOTE "3-tests\6-CONTROLADORIA\LANCAMENTOS_LOTE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/LANCAMENTOS_LOTE "3-tests\6-CONTROLADORIA\LANCAMENTOS_LOTE.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/LANCAMENTOS_LOTE "3-tests\6-CONTROLADORIA\LANCAMENTOS_LOTE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/6-CONTROLADORIA/LANCAMENTOS_LOTE_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
# Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          lancamento_lote
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-8723:Acesso a Abertura
# robot -v browser:chrome -t "SMF-8723:Acesso a Abertura" -d ./5-results/SMF-8723 "3-tests/6-CONTROLADORIA/LANCAMENTOS_LOTE.robot"
# robot -v browser:firefox -t "SMF-8723:Acesso a Abertura" -d ./5-results/SMF-8723 "3-tests/6-CONTROLADORIA/LANCAMENTOS_LOTE.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-8723"
    Acessa tela
    Acessar a tela "Lançamentos>Lotes>Cadastro / Fechamento de Lote"@nprint @las
    Preenche Descricao|${dados}[Descricao]|
    Inserir Data Final |${dados}[DataFinal]|   ## Preencher dd/Mmm/aaaa ## 
    Gravar Alteracoes
    Preenche Lancamentos do Lote "Historico Padrao|${dados}[HistPadrao]|", "Descricao Comp Padrao|${dados}[DescCompPadrao]|", "Cod Reduzido Debt|${dados}[CodRedDebt]|", "Cod Reduzido Cred|${dados}[CodRedCred]|", Valor Moeda|${dados}[VlMoeda]|"

