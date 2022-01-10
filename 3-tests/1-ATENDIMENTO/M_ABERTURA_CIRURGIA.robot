#################################################################################################################################################################
# Autor: Fernando Lima
# Decrição: Teste da tela Consulta de    Abertura de Cirurgia
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_ABERTURA_CIRURGIA.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_ABERTURA_CIRURGIA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_ABERTURA_CIRURGIA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_ABERTURA_CIRURGIA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/1-ATENDIMENTO/M_ABERTURA_CIRURGIA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
 # Suite registrada no gerenciador de dados
${suite}          m_abertura_cirurgia
 # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMABERTURACIRURGIA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMABERTURACIRURGIA-001:Fluxo Principal" -d ./5-results/SCR1AMABERTURACIRURGIA-001 "3-tests/1-ATENDIMENTO/M_ABERTURA_CIRURGIA.robot"
# robot -v browser:firefox -t "SCR1AMABERTURACIRURGIA-001:Fluxo Principal" -d ./5-results/SCR1AMABERTURACIRURGIA-001 "3-tests/1-ATENDIMENTO/M_ABERTURA_CIRURGIA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMABERTURACIRURGIA-001"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Lançamentos>Abertura de Cirurgia" @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Campos Aviso |${dados}[Aviso4]| |${dados}[AtendAviso4]|
    Validar Mensagem |${dados}[MsgRetorno]|
