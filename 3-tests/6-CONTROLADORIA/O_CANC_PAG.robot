#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela  Cadastro de Cancelamento de Pagamentos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\O_CANC_PAG.robot"
# firefox: robot -v browser:firefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\O_CANC_PAG.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\O_CANC_PAG.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\O_CANC_PAG.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/6-CONTROLADORIA/O_CANC_PAG_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao
 
*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            o_canc_pag
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6MOCANCPAG-001:Cancelamento de Cheque
# robot -v browser:chrome -t "SCR6MOCANCPAG-001:Cancelamento de Cheque" -d ./5-results/SCR6MOCANCPAG-001 "3-tests/6-CONTROLADORIA/O_CANC_PAG.robot"
# robot -v browser:firefox -t "SCR6MOCANCPAG-001:Cancelamento de Cheque" -d ./5-results/SCR6MOCANCPAG-001 "3-tests/6-CONTROLADORIA/O_CANC_PAG.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6MOCANCPAG-001"
    
    #Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar, Cta a Receber, Bancos)>Controle Financeiro>Contas a Pagar>Cancelamentos>Pagamentos"@nprint @las
    Acessa a Tela Pela Busca |O_CANC_PAG||Pagamentos| @las
    Validar Acesso a Tela |Cancelamento de pagamentos|
    
    Selecionar Cheque |${dados}[Cheque]| 
    Selecionar Motivo |${dados}[Motivo]| 
    Selecionar Data |${dados}[Data]| 
    Confirmar e Excluir |${dados}[MsgConfirmaExc]| |${dados}[MensagemSucesso]|

*** Test Case ***
SCR6MOCANCPAG-002:Cancelamento de Bordero
# robot -v browser:chrome -t "SCR6MOCANCPAG-002:Cancelamento de Bordero" -d ./5-results/SCR6MOCANCPAG-002 "3-tests/6-CONTROLADORIA/O_CANC_PAG.robot"
# robot -v browser:firefox -t "SCR6MOCANCPAG-002:Cancelamento de Bordero" -d ./5-results/SCR6MOCANCPAG-002 "3-tests/6-CONTROLADORIA/O_CANC_PAG.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6MOCANCPAG-002"
    
    #Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar, Cta a Receber, Bancos)>Controle Financeiro>Contas a Pagar>Cancelamentos>Pagamentos"@nprint @las
    Acessa a Tela Pela Busca |O_CANC_PAG||Pagamentos| @las
    Validar Acesso a Tela |Cancelamento de pagamentos|
    
    Selecionar Bordero |${dados}[Cheque]| 
    Selecionar Motivo |${dados}[Motivo]| 
    Selecionar Data |${dados}[Data]| 
    Confirmar e Excluir |${dados}[MsgConfirmaExc]| |${dados}[MensagemSucesso]|  

    
  