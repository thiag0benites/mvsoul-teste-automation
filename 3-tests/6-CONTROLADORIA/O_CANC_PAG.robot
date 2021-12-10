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


SCR6MOCANCPAG-004:Cancelamento de Debito
# robot -v browser:chrome -t "SCR6MOCANCPAG-004:Cancelamento de Debito" -d ./5-results/SCR6MOCANCPAG-004 "3-tests/6-CONTROLADORIA/O_CANC_PAG.robot"
# robot -v browser:firefox -t "SCR6MOCANCPAG-004:Cancelamento de Debito" -d ./5-results/SCR6MOCANCPAG-004 "3-tests/6-CONTROLADORIA/O_CANC_PAG.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6MOCANCPAG-004"
    
    #Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar, Cta a Receber, Bancos)>Controle Financeiro>Contas a Pagar>Cancelamentos>Pagamentos"@nprint @las
    Acessa a Tela Pela Busca |O_CANC_PAG||Pagamentos| @las
    Validar Acesso a Tela |Cancelamento de pagamentos|
    
    Selecionar Debito
    Selecionar DataIni |${dados}[Data]| 
    Selecionar Motivo |${dados}[Motivo]| 
    Selecionar na Lista 
    Excluir |${dados}[MensagemSucesso]|  

SCR6MOCANCPAG-006:Cancelamento de TED
# robot -v browser:chrome -t "SCR6MOCANCPAG-006:Cancelamento de TED" -d ./5-results/SCR6MOCANCPAG-006 "3-tests/6-CONTROLADORIA/O_CANC_PAG.robot"
# robot -v browser:firefox -t "SCR6MOCANCPAG-006:Cancelamento de TED" -d ./5-results/SCR6MOCANCPAG-006 "3-tests/6-CONTROLADORIA/O_CANC_PAG.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6MOCANCPAG-006"
    
    #Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar, Cta a Receber, Bancos)>Controle Financeiro>Contas a Pagar>Cancelamentos>Pagamentos"@nprint @las
    Acessa a Tela Pela Busca |O_CANC_PAG||Pagamentos| @las
    Validar Acesso a Tela |Cancelamento de pagamentos|
    
    Selecionar TED
    Selecionar DataIni |${dados}[Data]| 
    Selecionar Motivo |${dados}[Motivo]|
    Selecionar BorderoTed |${dados}[Cheque]| 
    Selecionar na Lista 
    Excluir |${dados}[MensagemSucesso]|  

SCR6MOCANCPAG-007:Cancelamento de Baixa Contabil
# robot -v browser:chrome -t "SCR6MOCANCPAG-007:Cancelamento de Baixa Contabil" -d ./5-results/SCR6MOCANCPAG-007 "3-tests/6-CONTROLADORIA/O_CANC_PAG.robot"
# robot -v browser:firefox -t "SCR6MOCANCPAG-007:Cancelamento de Baixa Contabil" -d ./5-results/SCR6MOCANCPAG-007 "3-tests/6-CONTROLADORIA/O_CANC_PAG.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6MOCANCPAG-007"
    
    #Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar, Cta a Receber, Bancos)>Controle Financeiro>Contas a Pagar>Cancelamentos>Pagamentos"@nprint @las
    Acessa a Tela Pela Busca |O_CANC_PAG||Pagamentos| @las
    Validar Acesso a Tela |Cancelamento de pagamentos|
    
    Selecionar Baixa
    Selecionar DataIni |${dados}[Data]| 
    Selecionar Motivo |${dados}[Motivo]|
    Selecionar na Lista 
    Excluir |${dados}[MensagemSucesso]|

SCR6MOCANCPAG-008:Cancelamento de Desconto
# robot -v browser:chrome -t "SCR6MOCANCPAG-008:Cancelamento de Desconto" -d ./5-results/SCR6MOCANCPAG-008 "3-tests/6-CONTROLADORIA/O_CANC_PAG.robot"
# robot -v browser:firefox -t "SCR6MOCANCPAG-008:Cancelamento de Desconto" -d ./5-results/SCR6MOCANCPAG-008 "3-tests/6-CONTROLADORIA/O_CANC_PAG.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6MOCANCPAG-008"
    
    #Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar, Cta a Receber, Bancos)>Controle Financeiro>Contas a Pagar>Cancelamentos>Pagamentos"@nprint @las
    Acessa a Tela Pela Busca |O_CANC_PAG||Pagamentos| @las
    Validar Acesso a Tela |Cancelamento de pagamentos|
    
    Selecionar Desconto
    Selecionar DataIni |${dados}[Data]| 
    Selecionar Motivo |${dados}[Motivo]|
    Selecionar na Lista 
    Excluir |${dados}[MensagemSucesso]|   

SCR6MOCANCPAG-010:Cancelamento de Dinheiro
# robot -v browser:chrome -t "SCR6MOCANCPAG-010:Cancelamento de Dinheiro" -d ./5-results/SCR6MOCANCPAG-010 "3-tests/6-CONTROLADORIA/O_CANC_PAG.robot"
# robot -v browser:firefox -t "SCR6MOCANCPAG-010:Cancelamento de Dinheiro" -d ./5-results/SCR6MOCANCPAG-010 "3-tests/6-CONTROLADORIA/O_CANC_PAG.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6MOCANCPAG-010"
    
    #Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar, Cta a Receber, Bancos)>Controle Financeiro>Contas a Pagar>Cancelamentos>Pagamentos"@nprint @las
    Acessa a Tela Pela Busca |O_CANC_PAG||Pagamentos| @las
    Validar Acesso a Tela |Cancelamento de pagamentos|
    
    Selecionar Dinheiro
    Selecionar DataIni |${dados}[Data]| 
    Selecionar Motivo |${dados}[Motivo]|
    Selecionar na Lista 
    Excluir |${dados}[MensagemSucesso]|   
  
  