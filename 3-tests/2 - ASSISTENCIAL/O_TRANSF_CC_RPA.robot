#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/O_TRANSF_CC_RPA_STEPS "3-tests\2 - ASSISTENCIAL\O_TRANSF_CC_RPA.robot"
# chrome:         robot -v browser:firefox -d ./5-results/O_TRANSF_CC_RPA_STEPS "3-tests\2 - ASSISTENCIAL\O_TRANSF_CC_RPA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/O_TRANSF_CC_RPA_STEPS "3-tests\2 - ASSISTENCIAL\O_TRANSF_CC_RPA.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/O_TRANSF_CC_RPA_STEPS "3-tests\2 - ASSISTENCIAL\O_TRANSF_CC_RPA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../../1-resources/bd/BancoDados.robot
Resource            ../../../1-resources/O_TRANSF_CC_RPA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}          fat_consultas_conta_paciente
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
