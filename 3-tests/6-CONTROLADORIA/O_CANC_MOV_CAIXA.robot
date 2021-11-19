#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/O_CANC_MOV_CAIXASTEPS "3-tests\2 - ASSISTENCIAL\O_CANC_MOV_CAIXA.robot"
# chrome:         robot -v browser:firefox -d ./5-results/O_CANC_MOV_CAIXASTEPS "3-tests\2 - ASSISTENCIAL\O_CANC_MOV_CAIXA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/O_CANC_MOV_CAIXA_STEPS "3-tests\2 - ASSISTENCIAL\O_CANC_MOV_CAIXA.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/O_CANC_MOV_CAIXASTEPS "3-tests\2 - ASSISTENCIAL\O_CANC_MOV_CAIXA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes

Resource            ../../1-resources/6-CONTROLADORIA/O_CANC_MOV_CAIXA_STEPS.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao


*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}          o_canc_mov_caixa
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
SMF-8951 : Cancelar movimentacoes ocorridas no Caixa
# robot -v browser:chrome -t "SMF-8951 : Cancelar movimentacoes ocorridas no Caixa" -d ./5-results/SMF-8951 "3-tests/6-CONTROLADORIA/O_CANC_MOV_CAIXA.robot"
# robot -v browser:firefox -t "SMF-8951 : Cancelar movimentacoes ocorridas no Caixa" -d ./5-results/SMF-8951 "3-tests/6-CONTROLADORIA/O_CANC_MOV_CAIXA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-8951"
    Acessar a tela "Controladoria>Caixa>Caixa>Movimentação>Cancelamento de Lançamentos"@nprint @las
    Acessa e Preenche Campo Codigo |${dados}[CampoCodigo]|
    Seleciona Lote para Cancelar E Preenche Justificativa |${dados}[TxtJustificativa]|