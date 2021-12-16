#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Consulta de Agenda - Centro Cirúrgico / Cirurgião
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_CONSULTA_PAC_AGENDA.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_CONSULTA_PAC_AGENDA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_CONSULTA_PAC_AGENDA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_CONSULTA_PAC_AGENDA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/M_CONSULTA_PAC_AGENDA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_consulta_pac_agenda
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMCONSULTAPACAGENDA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMCONSULTAPACAGENDA-001:Fluxo Principal" -d ./5-results/SCR1AMCONSULTAPACAGENDA-001 "3-tests/1-ATENDIMENTO/M_CONSULTA_PAC_AGENDA.robot"
# robot -v browser:firefox -t "SCR1AMCONSULTAPACAGENDA-001:Fluxo Principal" -d ./5-results/SCR1AMCONSULTAPACAGENDA-001 "3-tests/1-ATENDIMENTO/M_CONSULTA_PAC_AGENDA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMCONSULTAPACAGENDA-001"
    Acessa a Tela Pela Busca |M_CONSULTA_PAC_AGENDA||M_CONSULTA_PAC_AGENDA| @las
    Pesquisar Paciente |${dados}[CdPaciente]|
    Validar Dados Paciente |${dados}[Paciente]| |${dados}[MaePaciente]| |${dados}[NascimentoPaciente]|
    Validar Detalhes |${dados}[Endereco]| |${dados}[Bairro]| |${dados}[Cidade]| |${dados}[Telefone]| |${dados}[Celular]|