#################################################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/SCR6COREC-001 "3-tests/6-CONTROLADORIA/O_REC.robot"
# firefox:        robot -v browser:firefox -d ./5-results/SCR6COREC-001 "3-tests/6-CONTROLADORIA/O_REC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/SCR6COREC-001 "3-tests/6-CONTROLADORIA/O_REC.robot"
# firefox:        robot -v browser:headlessfirefox -d ./5-results/SCR6COREC-001 "3-tests/6-CONTROLADORIA/O_REC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/6-CONTROLADORIA/O_REC_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessãojrobot
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
 # Suite registrada no gerenciador de dados
${suite}          o_rec
 # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6COREC-001:Fluxo Principal
# robot -v browser:chrome -t "SCR6COREC-001:Fluxo Principal" -d ./5-results/SCR6COREC-001 "3-tests/6-CONTROLADORIA/O_REC.robot"
# robot -v browser:firefox -t "SCR6COREC-001:Fluxo Principal" -d ./5-results/SCR6COREC-001 "3-tests/6-CONTROLADORIA/O_REC.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6COREC-001"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Receber>Recebimentos>Recebimentos"@nprint @las
    Preencher dados do recebimento |${dados}[DataIni]||${dados}[DataFinal]||${dados}[Processo]||${dados}[ContaCorrente]||${dados}[CodResponsavel]|
    Valida mensagem sucesso |${dados}[MsgEsperada]|