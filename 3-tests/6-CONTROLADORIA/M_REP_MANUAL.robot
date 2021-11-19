#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_REP_MANUAL "3-tests\2 - ASSISTENCIAL\M_REP_MANUAL.robot"
# chrome:         robot -v browser:firefox -d ./5-results/M_REP_MANUAL "3-tests\2 - ASSISTENCIAL\M_REP_MANUAL.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_REP_MANUAL "3-tests\2 - ASSISTENCIAL\M_REP_MANUAL.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_REP_MANUAL "3-tests\2 - ASSISTENCIAL\M_REP_MANUAL.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes

Resource            ../../1-resources/6-CONTROLADORIA/M_REP_MANUAL_STEPS.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
# Test Teardown     Encerra sessao


*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}          fat_consultas_conta_paciente
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***


SMF-6503 : Realizar o Lançamento Manual de Repasse Medico
# robot -v browser:chrome -t "SMF-6503 : Realizar o Lançamento Manual de Repasse Medico" -d ./5-results/SMF-6503 "3-tests/6-CONTROLADORIA/M_REP_MANUAL.robot"
# robot -v browser:firefox -t "SMF-6503 : Realizar o Lançamento Manual de Repasse Medico" -d ./5-results/SMF-6503 "3-tests/6-CONTROLADORIA/M_REP_MANUAL.robot"
    Acessar a tela "Controladoria>Repasse Médico>Repasse>Lançamento Manual"@nprint @las
    Clicar no botao [Buscar]
    No campo <Competencia> inserir a competência desejada e clicar no botao [Executar]
    Clicar no botao [Adicionar] para realizar lancamento manual
    Usuario devera informar no campo <Competencia> para identificacao do Repasse a ser lancado manualmente no sistema



    






