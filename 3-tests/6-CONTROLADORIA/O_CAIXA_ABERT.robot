#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Efetuar a abertura do caixa. A abertura consiste em liberar o caixa selecionado para movimentações de recebimentos, pagamentos, transferências, etc.
#################################################################################################################################################################
# Execução Exemplo:
# chrome:   robot -v browser:chrome -t "SCR6CO_CAIXA_ABERT-001:Caixa Importar movimentação" -d ./5-results/SCR6CO_CAIXA_ABERT-001 "3-tests/6-CONTROLADORIA/O_CAIXA_ABERT.robot"
# firefox:  robot -v browser:firefox -t "SCR6CO_CAIXA_ABERT-001:Caixa Importar movimentação" -d ./5-results/SCR6CO_CAIXA_ABERT-001 "3-tests/6-CONTROLADORIA/O_CAIXA_ABERT.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR6CO_CAIXA_ABERT-001 "3-tests/6-CONTROLADORIA/O_CAIXA_ABERT.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR6CO_CAIXA_ABERT-001 "3-tests/6-CONTROLADORIA/O_CAIXA_ABERT.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/6-CONTROLADORIA/O_CAIXA_ABERT_STEPS.robot
Resource            ../../1-resources/auxiliar/Genericos.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            O_CAIXA_ABERT
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6CO_CAIXA_ABERT-001:Caixa Importar movimentação
# robot -v browser:chrome -t "SCR6CO_CAIXA_ABERT-001:Caixa Importar movimentação" -d ./5-results/SCR6CO_CAIXA_ABERT-001 "3-tests/6-CONTROLADORIA/O_CAIXA_ABERT.robot"
# robot -v browser:firefox -t "SCR6CO_CAIXA_ABERT-001:Caixa Importar movimentação" -d ./5-results/SCR6CO_CAIXA_ABERT-001 "3-tests/6-CONTROLADORIA/O_CAIXA_ABERT.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6CO_CAIXA_ABERT-001"
    Acessar a tela "Controladoria>Caixa>Caixa>Abertura"@nprint @las
    Validar Acesso a Tela |Abertura de Caixas|
    Selecionar através do checkbox o caixa que será aberto
    Clicar no Botao |Confirmar|
    Valida Mensagem        ${mensagemAberturaCaixa}         Caixa(s) aberto(s) com sucesso.
    Clicar no Botao |OK|