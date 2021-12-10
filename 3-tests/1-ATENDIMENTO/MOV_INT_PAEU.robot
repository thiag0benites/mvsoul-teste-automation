#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/MOV_INT_PAEU_STEPS "3-tests\1-ATENDIMENTO\MOV_INT_PAEU.robot"
# chrome:         robot -v browser:firefox -d ./5-results/MOV_INT_PAEU_STEPS "3-tests\1-ATENDIMENTO\MOV_INT_PAEU.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/MOV_INT_PAEU_STEPS "3-tests\1-ATENDIMENTO\MOV_INT_PAEU.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/MOV_INT_PAEU_STEPS "3-tests\1-ATENDIMENTO\MOV_INT_PAEU.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/1-ATENDIMENTO/MOV_INT_PAEU_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
#${suite}          m_centro_custo_comp
# # Recebe dados do gerenciador
#${dados}

*** Test Case ***
SCR1AMOVINTPAEU-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMOVINTPAEU-001:Fluxo Principal" -d ./5-results/SCR1AMOVINTPAEU-001 "3-tests/1-ATENDIMENTO/MOV_INT_PAEU.robot"
# robot -v browser:firefox -t "SCR1AMOVINTPAEU-001:Fluxo Principal" -d ./5-results/SCR1AMOVINTPAEU-001 "3-tests/1-ATENDIMENTO/MOV_INT_PAEU.robot"
    Acessar a tela "Atendimento>Urgência e Emergência>Atendimento>Observação>Transferência de Leito>"@nprint @las
    Selecionar tipo de atendimento
    Selecionar leito
    Escolher motivo da transferencia
    Selecionar tipo de limpeza
    Preencha o campo observacao
    Clique em salvar