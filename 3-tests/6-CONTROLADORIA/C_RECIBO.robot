#################################################################################################################################################################
# Autor: José Neto
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:firefox -d ./5-results/C_RECIBO_STEPS "3-tests\6 - CONTROLADORIA\C_RECIBO.robot"
# chrome:         robot -v browser:chrome -d ./5-results/C_RECIBO_STEPS "3-tests\6 - CONTROLADORIA\C_RECIBO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/C_RECIBO_STEPS "3-tests\6 - CONTROLADORIA\C_RECIBO.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/C_RECIBO_STEPS "3-tests\6 - CONTROLADORIA\C_RECIBO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/6-CONTROLADORIA/C_RECIBO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}          c_recibo
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
SMF-6378 : Imprimir Recibos
# robot -v browser:chrome -t "SMF-6378 : Imprimir Recibos" -d ./5-results/SMF-6378 "3-tests/6-CONTROLADORIA/C_RECIBO.robot"
# robot -v browser:firefox -t "SMF-6378 : Imprimir Recibos" -d ./5-results/SMF-6378 "3-tests/6-CONTROLADORIA/C_RECIBO.robot"
    # ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-6378"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Manutenção de Recibos"@nprint @las
    Remover Marcacao do Campo Argumentos de Pesquisa
    Executar Pesquisa
    Imprimir Recibo
    Limpar Pesquisa
    Executar Reimpressão
    Cancelar Recibo
    Cadastrar Responsável
    Finalizar Sistema