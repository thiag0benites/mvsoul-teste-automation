#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_PRE_AGENDAMENTO_STEPS "3-tests\1-ATENDIMENTO\M_PRE_AGENDAMENTO.robot"
# chrome:         robot -v browser:firefox -d ./5-results/M_PRE_AGENDAMENTO_STEPS "3-tests\1-ATENDIMENTO\M_PRE_AGENDAMENTO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_PRE_AGENDAMENTO_STEPS "3-tests\1-ATENDIMENTO\M_PRE_AGENDAMENTO.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_PRE_AGENDAMENTO_STEPS "3-tests\1-ATENDIMENTO\M_PRE_AGENDAMENTO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/1-ATENDIMENTO/M_PRE_AGENDAMENTO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}          m_pre_agendamento
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMPREAGENDAMENTO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMPREAGENDAMENTO-001:Fluxo Principal" -d ./5-results/SCR1AMPREAGENDAMENTO-001 "3-tests/1-ATENDIMENTO/M_PRE_AGENDAMENTO.robot"
# robot -v browser:firefox -t "SCR1AMPREAGENDAMENTO-001:Fluxo Principal" -d ./5-results/SCR1AMPREAGENDAMENTO-001 "3-tests/1-ATENDIMENTO/M_PRE_AGENDAMENTO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMPREAGENDAMENTO-001"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Pré-Agendamento Cirúrgico>Pré-Agendamento Cirurgico"@nprint @las
    Preencha os campos obrigatorios |${dados}[DataA]| |${dados}[DataB]| |${dados}[Hora]| |${dados}[DataC]| |${dados}[Paciente]|
    Escolha o centro cirurgico |${dados}[Centro]|
    Selecione o tipo de acomodacao
    Selecione a sala cirurgica
    Escolha o medico associado |${dados}[Medico]|
    Pressione o botao adicionar cirurgia
    Preencha as caracteristicas da cirurgia |${dados}[Caracteristica]|
    