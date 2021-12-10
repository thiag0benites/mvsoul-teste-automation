#################################################################################################################################################################
# Autor: José Neto
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:firefox -d ./5-results/M_PAINEL_WORKFLOW_STEPS "3-tests\1 - ATENDIMENTO\M_PAINEL_WORKFLOW.robot"
# chrome:         robot -v browser:chrome -d ./5-results/M_PAINEL_WORKFLOW_STEPS "3-tests\1 - ATENDIMENTO\M_PAINEL_WORKFLOW.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_PAINEL_WORKFLOW_STEPS "3-tests\1 - ATENDIMENTO\M_PAINEL_WORKFLOW.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_PAINEL_WORKFLOW_STEPS "3-tests\1 - ATENDIMENTO\M_PAINEL_WORKFLOW.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/1-ATENDIMENTO/M_PAINEL_WORKFLOW_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}          m_painel_workflow
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
SMF-10543 : Consultar painel workflow
# robot -v browser:chrome -t "SMF-10543 : Consultar painel workflow" -d ./5-results/SMF-10543 "3-tests/1-ATENDIMENTO/M_PAINEL_WORKFLOW.robot"
# robot -v browser:firefox -t "SMF-10543 : Consultar painel workflow" -d ./5-results/SMF-10543 "3-tests/1-ATENDIMENTO/M_PAINEL_WORKFLOW.robot"
    #${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-10543"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Pré-Agendamento Cirúrgico>Painel de Workflow"@nprint @las
    Click no Botao |Pre/Agend| e Marcar o Check Button BtnDtPrevista
    Click no Botao |Revisao| e Marcar o Check Button BtnDtPrevista
    Click no Botao |Cotacao| e Marcar o Check Button BtnDtPrevista
    Click no Botao |Aguard Cotacao| e Marcar o Check Button BtnDtPrevista
    Click no Botao |Aguard Guia| e Marcar o Check Button BtnDtPrevista
    Click no Botao |Solic Guia| e Marcar o Check Button BtnDtPrevista
    Click no Botao |Confirmacao| e Marcar o Check Button BtnDtPrevista
    Click no Botao |Aguard Realizacao| e Marcar o Check Button BtnDtPrevista
    Click no Botao |Todos| e Marcar o Check Button BtnDtPrevista