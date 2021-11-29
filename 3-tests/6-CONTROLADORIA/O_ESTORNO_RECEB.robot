#################################################################################################################################################################
# Autor: José Neto
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:firefox -d ./5-results/O_ESTORNO_RECEB_STEPS "3-tests\6 - CONTROLADORIA\O_ESTORNO_RECEB.robot"
# chrome:         robot -v browser:chrome -d ./5-results/O_ESTORNO_RECEB_STEPS "3-tests\6 - CONTROLADORIA\O_ESTORNO_RECEB.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/O_ESTORNO_RECEB_STEPS "3-tests\6 - CONTROLADORIA\O_ESTORNO_RECEB.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/O_ESTORNO_RECEB_STEPS "3-tests\6 - CONTROLADORIA\O_ESTORNO_RECEB.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/6-CONTROLADORIA/O_ESTORNO_RECEB_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          o_estorno_receb
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-6281 : Estornar Recebimento
# robot -v browser:chrome -t "SMF-6281 : Estornar Recebimento" -d ./5-results/SMF-6281 "3-tests/6-CONTROLADORIA/O_ESTORNO_RECEB.robot"
# robot -v browser:firefox -t "SMF-6281 : Estornar Recebimento" -d ./5-results/SMF-6281 "3-tests/6-CONTROLADORIA/O_ESTORNO_RECEB.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-6281"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Receber>Estorno>Estorno de Recebimentos"@nprint @las
    Selecionar Parametros de Pesquisa o Tipo de Conta a Ser Estornada |${dados}[TipoDeConta]|
    Informar Nome do Cliente ou Paciente |${dados}[Cliente]|
    Informar o Periodo no Qual Ocorreu o Pagamento(Credito) |${dados}[DtInicial]| |${dados}[DtFinal]|
    Selecionar o Tipo de Lancamento que Sera Vinculado ao Estorno |${dados}[TipoLancamento]|
    Selecionar o "Motivo de Cancelamento" Pelo Qual Esta Sendo Efetuado o Estorno |${dados}[MotivoCancelamento]|
    Informar "Dt estorno" a Data em Que Esta Sendo Realizado o Estorno do Recebimento |${dados}[DtEstorno]|
    Selecionar os Recebimentos a Serem Estornados
    Informar o "Nr de documento" Referente ao Recebimento |${dados}[NrDocumento]|
    Clicar em <CONFIRMAR>