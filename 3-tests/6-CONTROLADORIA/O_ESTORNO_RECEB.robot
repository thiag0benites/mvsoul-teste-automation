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
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Receber>Estorno>Estorno de Recebimentos"@nprint @las
    Selecionar Parametros de Pesquisa o Tipo de Conta a Ser Estornada
    Informar Nome
    Informar Periodo do Pagamento
    Selecionar o Tipo de Lancamento
    Selecionar Motivo do Cancelamento
    Informar Data que o Estorno foi Realizado
    Selecionar os Recebimentos a Serem Estornados
    Informar o Numero de Documento Referente ao Recebimento
    Selecionar Confirmar