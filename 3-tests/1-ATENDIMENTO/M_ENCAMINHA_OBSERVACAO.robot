#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Encaminhamento de Pacientes para Observação
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_ENCAMINHA_OBSERVACAO.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_ENCAMINHA_OBSERVACAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_ENCAMINHA_OBSERVACAO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_ENCAMINHA_OBSERVACAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/M_ENCAMINHA_OBSERVACAO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMENCAMINHAOBSERVACAO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMENCAMINHAOBSERVACAO-001:Fluxo Principal" -d ./5-results/SCR1AMENCAMINHAOBSERVACAO-001 "3-tests/1-ATENDIMENTO/M_ENCAMINHA_OBSERVACAO.robot"
# robot -v browser:firefox -t "SCR1AMENCAMINHAOBSERVACAO-001:Fluxo Principal" -d ./5-results/SCR1AMENCAMINHAOBSERVACAO-001 "3-tests/1-ATENDIMENTO/M_ENCAMINHA_OBSERVACAO.robot"
    Acessar a tela "Atendimento>Urgência e Emergência>Atendimento>Observação>Encaminhamento"@nprint @las
    Validar Acesso a Tela |Encaminhamento de Pacientes para Observação|
    Preencher Atendimento
    Validar Dados Do Paciente
    Selecionar Leito
    Validar Encaminhar Paciente
