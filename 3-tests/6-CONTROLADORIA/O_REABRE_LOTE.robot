#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/O_REABRE_LOTE_STEPS "3-tests\2 - ASSISTENCIAL\O_REABRE_LOTE.robot"
# chrome:         robot -v browser:firefox -d ./5-results/O_REABRE_LOTE_STEPS "3-tests\2 - ASSISTENCIAL\O_REABRE_LOTE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/O_REABRE_LOTE_STEPS "3-tests\2 - ASSISTENCIAL\O_REABRE_LOTE.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/O_REABRE_LOTE_RPA_STEPS "3-tests\2 - ASSISTENCIAL\O_REABRE_LOTE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes

Resource            ../../1-resources/6-CONTROLADORIA/O_REABRE_LOTE_STEPS.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao


*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}          fat_consultas_conta_paciente
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***

SMF-8969 : Reabrir Lote
# robot -v browser:chrome -t "SMF-8969 : Reabrir Lote" -d ./5-results/SMF-8969 "3-tests/6-CONTROLADORIA/O_REABRE_LOTE.robot"
# robot -v browser:firefox -t "SMF-8969 : Reabrir Lote" -d ./5-results/SMF-8969 "3-tests/6-CONTROLADORIA/O_REABRE_LOTE.robot"
    Acessar a tela "Controladoria>Caixa>Caixa>Reabertura de Lotes"@nprint @las
    Acessa e Preenche Campo Codigo |HOBRA CAIXA|
    Seleciona Lote para Reabrir E Preenche Justificativa