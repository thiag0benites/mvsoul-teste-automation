#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Consulta de Cirurgias (Agendadas, Realizadas e Canceladas)
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_AGENDA_CIRURGIA.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_AGENDA_CIRURGIA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_AGENDA_CIRURGIA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_AGENDA_CIRURGIA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/C_AGENDA_CIRURGIA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            c_agenda_cirurgia
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1ACAGENDACIRURGIA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1ACAGENDACIRURGIA-001:Fluxo Principal" -d ./5-results/SCR1ACAGENDACIRURGIA-001 "3-tests/1-ATENDIMENTO/C_AGENDA_CIRURGIA.robot"
# robot -v browser:firefox -t "SCR1ACAGENDACIRURGIA-001:Fluxo Principal" -d ./5-results/SCR1ACAGENDACIRURGIA-001 "3-tests/1-ATENDIMENTO/C_AGENDA_CIRURGIA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1ACAGENDACIRURGIA-001"
    Acessar a tela "Atendimento>Internação>Consultas>Cirurgias (Agendada / Realizada / Canceladas)"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Pesquisar Aviso de Cirurgia |${dados}[CdAviso]|
    Validar Consulta por Aviso |${dados}[Cirurgia1]| |${dados}[Cirurgia2]|
    Acessar Aba |Paciente| |${dados}[Paciente]|
    Acessar Aba |Diagnostico| |${dados}[Diagnostico]|
    Acessar Aba |Confirmacao| |${dados}[EquipeMedica]|
    Acessar Aba |Cancelamento| |${dados}[NomeTela]|
    Acessar Aba |FiltrarCirurgiao| ||
    Acessar Aba |FiltrarPediatria| ||
    Acessar Aba |FiltrarUTI| ||
    Acessar Aba |Observacao| ||