#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Cadastro de Agendas
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_CAD_AGENDA_CENTRAL.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_CAD_AGENDA_CENTRAL.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_CAD_AGENDA_CENTRAL.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_CAD_AGENDA_CENTRAL.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/M_CAD_AGENDA_CENTRAL_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_cad_agenda_central
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMCADAGENDACENTRAL-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMCADAGENDACENTRAL-001:Fluxo Principal" -d ./5-results/SCR1AMCADAGENDACENTRAL-001 "3-tests/1-ATENDIMENTO/M_CAD_AGENDA_CENTRAL.robot"
# robot -v browser:firefox -t "SCR1AMCADAGENDACENTRAL-001:Fluxo Principal" -d ./5-results/SCR1AMCADAGENDACENTRAL-001 "3-tests/1-ATENDIMENTO/M_CAD_AGENDA_CENTRAL.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMCADAGENDACENTRAL-001"
    Acessar a tela "Atendimento>Central de Agendamento>Tabelas>Cadastro de Agendas"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Pesquisar Agenda Cadastrada |${dados}[CdAgenda]|
    Validar Agenda |${dados}[Prestador]| |${dados}[UnidInternacao]| |${dados}[Setor]|
    Cadastrar Item de Agendamento |${dados}[ItemAgendamento]|
    Clicar Botao Salvar |${dados}[MensagemSucesso]|
    # Retornar massa de dados para status inicial 
    Excluir Item Agendamento
    Clicar Botao Salvar |${dados}[MensagemSucesso]|
    

