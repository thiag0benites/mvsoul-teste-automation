#################################################################################################################################################################
# Autor: Marcos Costa
# Decrição: Solicitar pedido de exame em atendimento por convenio lançando cobrança para conta do convenio
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome  -d ./5-results/SRCMCAUCAO001 "3-tests/6-CONTROLADORIA/O_CONCBANC.robot"
# chrome:         robot -v browser:firefox -d ./5-results/SRCMCAUCAO001 "3-tests/6-CONTROLADORIA/O_CONCBANC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome   -d ./5-results/SRCMCAUCAO001 "3-tests/6-CONTROLADORIA/O_CONCBANC.robot"
# chrome:         robot -v browser:headlessfirefox  -d ./5-results/SRCMCAUCAO001 "3-tests/6-CONTROLADORIA/O_CONCBANC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes

Resource            ../../1-resources/2-ASSISTENCIAL/M_PED_EXA_ATEND_STEPS.robot


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
SRMPEDEXAATEND001:Fluxo Principal
# SMF-4813
# robot -v browser:chrome -t "SRMPEDEXAATEND001:Fluxo Principal" -d ./5-results/SRMPEDEXAATEND001 "3-tests/2-ASSISTENCIAL/M_PED_EXA_ATEND.robot"
# robot -v browser:firefox -t "SRMPEDEXAATEND001:Fluxo Principal" -d ./5-results/SRMPEDEXAATEND001 "3-tests/2-ASSISTENCIAL/M_PED_EXA_ATEND.robot"

    Click no Item  ${DiagTerapia}
    Click no Item  ${LaborAnalises}
    Click no Item  ${Atendimento}
    Click no Item  ${PedExa}
    Clique no botao Paciente 
    Clique na aba Paciente > Recepcao
    Pesquise, selecione o paciente e clique no botao "Pedido" |ALEXANDRE MARCOS COSTA RIBEIRO|
    #Preencha os dados do atendimento 

