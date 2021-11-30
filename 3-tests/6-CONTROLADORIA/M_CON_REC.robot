#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela  Cadastro de Contas a Receber
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_CON_REC.robot"
# firefox: robot -v browser:firefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_CON_REC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_CON_REC.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_CON_REC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/6-CONTROLADORIA/M_CON_REC_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao
 
*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_con_rec
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6MMCONREC-001:Fluxo Principal
# robot -v browser:chrome -t "SCR6MMCONREC-001:Fluxo Principal" -d ./5-results/SCR6MMCONREC-001 "3-tests/6-CONTROLADORIA/M_ORDCOM.robot"
# robot -v browser:firefox -t "SCR6MMCONREC-001:Fluxo Principal" -d ./5-results/SCR6MMCONREC-001 "3-tests/6-CONTROLADORIA/M_ORDCOM.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6MMCONREC-001"
    
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar, Cta a Receber, Bancos)>Controle Financeiro>Contas a Receber>Cadastros>Conta a Receber"@nprint @las
    
    Validar Acesso a Tela |Contas a Receber|
    
    Preencher Processo , Data de Emissão, e Data de Lançamento |2626| |20/12/2021| |21/12/2021|
    
    Preencher Tipo de Documento, Cliente, Número do Documento, Série e Conta Contabil |114| |261| |15454| |1515| |472|
  
    Informar Valor Bruto , Desconto e Acrescimo |100| |12| |1| |3| |1|

    Informar Hist Padrão e Observação |49| |OBSERVACOES TESTE AUTOMATIZADO|

    Informar Parcela |100|

    Informar Detalhamento |44|

    Informar Compartilhamento (Setor, ConContabil, ConCusto e Rateio) |690| |30018| |45| |100|

    Salvar Registro
    
  