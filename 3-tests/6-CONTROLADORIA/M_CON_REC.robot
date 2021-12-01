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
# robot -v browser:chrome -t "SCR6MMCONREC-001:Fluxo Principal" -d ./5-results/SCR6MMCONREC-001 "3-tests/6-CONTROLADORIA/M_CON_REC.robot"
# robot -v browser:firefox -t "SCR6MMCONREC-001:Fluxo Principal" -d ./5-results/SCR6MMCONREC-001 "3-tests/6-CONTROLADORIA/M_CON_REC.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6MMCONREC-001"
    
    #Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar, Cta a Receber, Bancos)>Controle Financeiro>Contas a Receber>Cadastros>Conta a Receber"@nprint @las
    Acessa a Tela Pela Busca |M_CON_REC||Conta a Receber| @las
    Validar Acesso a Tela |Contas a Receber|
    
    Preencher Processo , Data de Emissão, e Data de Lançamento |${dados}[Processo]| |${dados}[DtEmissao]| |${dados}[DtLancamento]|
    
    Preencher Tipo de Documento, Cliente, Número do Documento, Série e Conta Contabil |${dados}[TpDocumento]| |${dados}[Cliente]| |${dados}[NrDocumento]| |${dados}[Serie]| |${dados}[ContaContabil]|
  
    Informar Valor Bruto , Desconto e Acrescimo |${dados}[VlBruto]| |${dados}[Desconto]| |${dados}[VlDesconto]| |${dados}[Acrescimo]| |${dados}[VlAcrescimo]|

    Informar Hist Padrão e Observação |${dados}[HistPadrao]| |${dados}[Observacao]|

    #Informar Parcela |${dados}[Parcela]|

    Informar Detalhamento |${dados}[Detalhamento]|

    Informar Compartilhamento (Setor, ConContabil, ConCusto e Rateio) |${dados}[Setor]| |${dados}[Contabil]| |${dados}[ConCusto| |${dados}[Rateio]|

    Salvar Registro |${dados}[MensagemRegistroSalvo]|
    
  