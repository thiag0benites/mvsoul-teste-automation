#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Cancelamento do Diagnóstico de Atendimento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_CANCELA_DIAGNOSTICO.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_CANCELA_DIAGNOSTICO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_CANCELA_DIAGNOSTICO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_CANCELA_DIAGNOSTICO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/M_CANCELA_DIAGNOSTICO_STEPS.robot
Resource            ../../1-resources/1-ATENDIMENTO/ATE_COMPL_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_cancela_diagnostico
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMCANCELADIAGNOSTICO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMCANCELADIAGNOSTICO-001:Fluxo Principal" -d ./5-results/SCR1AMCANCELADIAGNOSTICO-001 "3-tests/1-ATENDIMENTO/M_CANCELA_DIAGNOSTICO.robot"
# robot -v browser:firefox -t "SCR1AMCANCELADIAGNOSTICO-001:Fluxo Principal" -d ./5-results/SCR1AMCANCELADIAGNOSTICO-001 "3-tests/1-ATENDIMENTO/M_CANCELA_DIAGNOSTICO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMCANCELADIAGNOSTICO-001"
    Confirmacao Diagnostico               ####   Keyword para validar pré requisito do teste   ###
    Acessar a tela "Atendimento>Urgência e Emergência>Atendimento>Diagnóstico do Atendimento>Cancelamento"@nprint @no
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Atendimento
    Validar Dados Apos Selecao do Atendimento
    Confirmar Cancelamento de Diagnostico
