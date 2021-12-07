#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_CONTRATO_ADIANT_RECEB_STEPS "3-tests\6-CONTROLADORIA\M_CONTRATO_ADIANT_RECEB.robot"
# chrome:         robot -v browser:firefox -d ./5-results/M_CONTRATO_ADIANT_RECEB_STEPS "3-tests\6-CONTROLADORIA\M_CONTRATO_ADIANT_RECEB.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_CONTRATO_ADIANT_RECEB_STEPS "3-tests\6-CONTROLADORIA\M_CONTRATO_ADIANT_RECEB.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_CONTRATO_ADIANT_RECEB_STEPS "3-tests\6-CONTROLADORIA\M_CONTRATO_ADIANT_RECEB.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/6-CONTROLADORIA/M_CONTRATO_ADIANT_RECEB_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
#Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}          m_contrato_adiant_receb
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-5520 : Realizar Contrato de Adiantamento do tipo Financeiro
# robot -v browser:chrome -t "SMF-5520 : Realizar Contrato de Adiantamento do tipo Financeiro" -d ./5-results/SMF-5520 "3-tests/6-CONTROLADORIA/M_CONTRATO_ADIANT_RECEB.robot"
# robot -v browser:firefox -t "SMF-5520 : Realizar Contrato de Adiantamento do tipo Financeiro" -d ./5-results/SMF-5520 "3-tests/6-CONTROLADORIA/M_CONTRATO_ADIANT_RECEB.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5520"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Caixa>Caixa>Manutenção de Contrato de Adiantamento"@nprint @las
    Informar a empresa que sera responsavel pelo contrato de adiantamento |${dados}[FiltroEmpresa]|
    Selecionar o <tipo de adiantamento que sera realizado Financeiro> |${dados}[TipoAdiantamento]|, <tipo de contratante> |${dados}[TipoContratante]|, <contratante> |${dados}[SelecionarPessoa]|
    Atribuir <uma descricao ao contrato e tambem atribuir um numero de contrato> |${dados}[CaracContrato]| |${dados}[NrContrato]|, <uma data de vencimento de pagamento do contrato> |${dados}[Vencimento]|, <da forma de pagamento> |${dados}[FormaPgto]| |${dados}[ValorContrato2]| |${dados}[Data]|
    Clicar no <icone de salvar do menu principal> |${dados}[MsgVerificada]|, <botao Gerar Contas a Receber>
    Cadastrar <Conta contabil> |${dados}[FiltroContabil]|, <Tipo de documento> |${dados}[TipoDoc]|, <moeda a ser utilizada> |${dados}[Moeda]|, <o setor a conta contabil a conta de custo e o valor do rateio> |${dados}[TipoConta]| |${dados}[ValorRateio2]|
    Clicar no botao Concluir |${dados}[MsgValidada]|


SMF-5519 : Realizar Contrato de Adiantamento do tipo Pacote
# robot -v browser:chrome -t "SMF-5519 : Realizar Contrato de Adiantamento do tipo Pacote" -d ./5-results/SMF-5519 "3-tests/6-CONTROLADORIA/M_CONTRATO_ADIANT_RECEB.robot"
# robot -v browser:firefox -t "SMF-5519 : Realizar Contrato de Adiantamento do tipo Pacote" -d ./5-results/SMF-5519 "3-tests/6-CONTROLADORIA/M_CONTRATO_ADIANT_RECEB.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5519"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Caixa>Caixa>Manutenção de Contrato de Adiantamento"@nprint @las
    2Informar a empresa que sera responsavel pelo contrato de adiantamento |${dados}[FiltroEmpresa]|
    2Selecionar o <tipo de adiantamento que sera realizado Financeiro> |${dados}[TipoAdiantamento]|, <tipo de contratante> |${dados}[TipoContratante]|, <contratante> |${dados}[SelecionarPessoa]|
    2Atribuir uma descricao ao contrato e tambem atribuir um numero de contrato |${dados}[CaracContrato]| |${dados}[NrContrato]|
    Selecionar o pacote que esta sendo contratado pelo paciente e atribuir forma de pagamento |${dados}[Pacote]|
    Atribuir uma data de vencimento de pagamento do contrato |${dados}[Vencimento]| |${dados}[Data]|
    2Clicar no <icone de salvar do menu principal> |${dados}[MsgVerificada]|, <botao Gerar Contas a Receber>
    2Cadastrar <Conta contabil> |${dados}[FiltroContabil]|, <Tipo de documento> |${dados}[TipoDoc]|, <moeda a ser utilizada> |${dados}[Moeda]|, <o setor a conta contabil a conta de custo e o valor do rateio> |${dados}[TipoConta]| |${dados}[ValorRateio2]|
    2Clicar no botao Concluir |${dados}[MsgValidada]|

   