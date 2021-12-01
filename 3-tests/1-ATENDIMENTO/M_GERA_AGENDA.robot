#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Geração e Liberação de Agenda
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_GERA_AGENDA.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_GERA_AGENDA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_GERA_AGENDA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_GERA_AGENDA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/M_GERA_AGENDA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_gera_agenda
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMGERAAGENDA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMGERAAGENDA-001:Fluxo Principal" -d ./5-results/SCR1AMGERAAGENDA-001 "3-tests/1-ATENDIMENTO/M_GERA_AGENDA.robot"
# robot -v browser:firefox -t "SCR1AMGERAAGENDA-001:Fluxo Principal" -d ./5-results/SCR1AMGERAAGENDA-001 "3-tests/1-ATENDIMENTO/M_GERA_AGENDA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMGERAAGENDA-001"
    Acessar a tela "Atendimento>Central de Agendamento>Agendamentos>Geração e Liberação de Agendas"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Selecionar Escala e Periodo |${dados}[Escala]| |${dados}[Periodo]| |${dados}[DtInicial]| |${dados}[DtFinal]|
    Validar Dados da Escala |${dados}[CdEscala]| |${dados}[TpEscala]| |${dados}[Dia]| |${dados}[HrInicial]| |${dados}[HrFinal]| |${dados}[Prestador]| |${dados}[Recurso]| |${dados}[Feriado]|
    Clicar Botao Gerar |${dados}[MensagemRecebidaGerar]|
    Clicar Opcao Sim Para Gerar Escala |${dados}[MensagemRecebidaSucesso]|