#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_AGENDA_SCMA_STEPS "3-tests\1-ATENDIMENTO\M_AGENDA_SCMA.robot"
# chrome:         robot -v browser:firefox -d ./5-results/M_AGENDA_SCMA_STEPS "3-tests\1-ATENDIMENTO\M_AGENDA_SCMA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_AGENDA_SCMA_STEPS "3-tests\1-ATENDIMENTO\M_AGENDA_SCMA.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_AGENDA_SCMA_STEPS "3-tests\1-ATENDIMENTO\M_AGENDA_SCMA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/1-ATENDIMENTO/M_AGENDA_SCMA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
#${suite}          m_agenda_scma
# # Recebe dados do gerenciador
#${dados}

*** Test Case ***
SCR1AMAGENDASCMA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMAGENDASCMA-001:Fluxo Principal" -d ./5-results/SCR1AMAGENDASCMA-001 "3-tests/1-ATENDIMENTO/M_AGENDA_SCMA.robot"
# robot -v browser:firefox -t "SCR1AMAGENDASCMA-001:Fluxo Principal" -d ./5-results/SCR1AMAGENDASCMA-001 "3-tests/1-ATENDIMENTO/M_AGENDA_SCMA.robot"
    #${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMAGENDASCMA-001"
    Acessar a tela "Atendimento>Central de Agendamento>Agendamentos>Agendamento"@nprint @las
    Aperte o botao pesquisa na tela principal
    Selecione o atendimento