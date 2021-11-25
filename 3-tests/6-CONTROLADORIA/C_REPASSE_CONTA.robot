#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/C_REPASSE_CONTA "3-tests\6-CONTROLADORIA\C_REPASSE_CONTA.robot"
# chrome:         robot -v browser:firefox -d ./5-results/C_REPASSE_CONTA "3-tests\6-CONTROLADORIA\C_REPASSE_CONTA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/C_REPASSE_CONTA "3-tests\6-CONTROLADORIA\C_REPASSE_CONTA.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/C_REPASSE_CONTA "3-tests\6-CONTROLADORIA\C_REPASSE_CONTA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes

Resource            ../../1-resources/6-CONTROLADORIA/C_REPASSE_CONTA_STEPS.robot



### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao


*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}          m_rep_manual
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
SMF-4900 : Consultar os repasses gerados por atendimento para os prestadores
# robot -v browser:chrome -t "SMF-4900 : Consultar os repasses gerados por atendimento para os prestadores" -d ./5-results/SMF-4900 "3-tests/6-CONTROLADORIA/C_REPASSE_CONTA.robot"
# robot -v browser:firefox -t "SMF-4900 : Consultar os repasses gerados por atendimento para os prestadores" -d ./5-results/SMF-4900 "3-tests/6-CONTROLADORIA/C_REPASSE_CONTA.robot"

SMF-4911 : Consultar os repasses gerados através nome do Paciente
# robot -v browser:chrome -t "SMF-4911 : Consultar os repasses gerados através nome do Paciente" -d ./5-results/SMF-4911 "3-tests/6-CONTROLADORIA/C_REPASSE_CONTA.robot"
# robot -v browser:firefox -t "SMF-4911 : Consultar os repasses gerados através nome do Paciente" -d ./5-results/SMF-4911 "3-tests/6-CONTROLADORIA/C_REPASSE_CONTA.robot"

SMF-4914 : Consultar o valor do honorário do Atendimento dos repasses gerados por atendiment
# robot -v browser:chrome -t "SMF-4914 : Consultar o valor do honorário do Atendimento dos repasses gerados por atendiment" -d ./5-results/SMF-4914 "3-tests/6-CONTROLADORIA/C_REPASSE_CONTA.robot"
# robot -v browser:firefox -t "SMF-4914 : Consultar o valor do honorário do Atendimento dos repasses gerados por atendiment" -d ./5-results/SMF-4914 "3-tests/6-CONTROLADORIA/C_REPASSE_CONTA.robot"