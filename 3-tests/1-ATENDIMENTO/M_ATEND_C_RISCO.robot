#################################################################################################################################################################
# Autor: José Neto
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:firefox -d ./5-results/M_ATEND_C_RISCO_STEPS "3-tests\1 - ATENDIMENTO\M_ATEND_C_RISCO.robot"
# chrome:         robot -v browser:chrome -d ./5-results/M_ATEND_C_RISCO_STEPS "3-tests\1 - ATENDIMENTO\M_ATEND_C_RISCO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_ATEND_C_RISCO_STEPS "3-tests\1 - ATENDIMENTO\M_ATEND_C_RISCO.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_ATEND_C_RISCO_STEPS "3-tests\1 - ATENDIMENTO\M_ATEND_C_RISCO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/1-ATENDIMENTO/M_ATEND_C_RISCO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_atend_c_risco
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-10546 : Confirmar o paciente sem cadastro pós classificação de risco
# robot -v browser:chrome -t "SMF-10546 : Confirmar o paciente sem cadastro pós classificação de risco" -d ./5-results/SMF-10546 "3-tests/1-ATENDIMENTO/M_ATEND_C_RISCO.robot"
# robot -v browser:firefox -t "SMF-10546 : Confirmar o paciente sem cadastro pós classificação de risco" -d ./5-results/SMF-10546 "3-tests/1-ATENDIMENTO/M_ATEND_C_RISCO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-10546"
    Acessar a tela "Atendimento>Urgência e Emergência>Atendimento>Pré-Atendimento / Classificação de Risco"@nprint @nao
    Validar Acesso a Tela |Consulta de Pacientes Triados - Classificação de Risco|
    Alterar Data de Pre-Atendimento |${dados}[DtPreAtend]|
    Pesquisar Atraves do Tipo de Senha Que Esta Sendo Chamado
