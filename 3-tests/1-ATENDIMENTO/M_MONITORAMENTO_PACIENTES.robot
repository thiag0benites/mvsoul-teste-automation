#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Diagnóstico do Atendimento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_MONITORAMENTO_PACIENTES.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_MONITORAMENTO_PACIENTES.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_MONITORAMENTO_PACIENTES.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_MONITORAMENTO_PACIENTES.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/M_MONITORAMENTO_PACIENTES_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_monitoramento_pacientes
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMMONITORAMENTOPACIENTES-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMMONITORAMENTOPACIENTES-001:Fluxo Principal" -d ./5-results/SCR1AMMONITORAMENTOPACIENTES-001 "3-tests/1-ATENDIMENTO/M_MONITORAMENTO_PACIENTES.robot"
# robot -v browser:firefox -t "SCR1AMMONITORAMENTOPACIENTES-001:Fluxo Principal" -d ./5-results/SCR1AMMONITORAMENTOPACIENTES-001 "3-tests/1-ATENDIMENTO/M_MONITORAMENTO_PACIENTES.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMMONITORAMENTOPACIENTES-001"
    Acessar a tela "Atendimento>Urgência e Emergência>Atendimento>Acompanhamento de Urgências (SOS Emergência)"@nprint @las
    Filtrar por Unidade de Atendimento |${dados}[UnidAtendimento]|
    Validar Resultado do Filtro |${dados}[Paciente]| |${dados}[Atendimento]| |${dados}[Especialidade]|


