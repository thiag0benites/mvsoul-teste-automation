#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Consulta de Agenda - Centro Cirúrgico / Cirurgião
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_AGENDA_CENCIR.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_AGENDA_CENCIR.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_AGENDA_CENCIR.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_AGENDA_CENCIR.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/C_AGENDA_CENCIR_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            c_agenda_cencir
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1ACAGENDACENCIR-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1ACAGENDACENCIR-001:Fluxo Principal" -d ./5-results/SCR1ACAGENDACENCIR-001 "3-tests/1-ATENDIMENTO/C_AGENDA_CENCIR.robot"
# robot -v browser:firefox -t "SCR1ACAGENDACENCIR-001:Fluxo Principal" -d ./5-results/SCR1ACAGENDACENCIR-001 "3-tests/1-ATENDIMENTO/C_AGENDA_CENCIR.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1ACAGENDACENCIR-001"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Consultas>Agenda>Por Centro Cirúrgico"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Realizar Consulta por Centro Cirurgico |${dados}[CentroCirurgico]| |${dados}[Data]|
    Validar Agendamentos Selecionados |${dados}[Paciente1]| |${dados}[Paciente2]|
    Validar Aba Detalhes do Aviso |${dados}[Sala]| |${dados}[Prestador]|
    Validar Aba Cirurgia |${dados}[Cirurgia]|
    Validar Aba Equipamentos |${dados}[Equipamento1]| |${dados}[Equipamento2]|
    Validar Aba Tipo de Anestesia |${dados}[Anestesia]|


