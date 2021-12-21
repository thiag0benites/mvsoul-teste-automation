#################################################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/SCR5FMLANCFFCV-001 "3-tests\5 - FATURAMENTO\M_LANC_FFCV.robot"
# firefox:        robot -v browser:firefox -d ./5-results/SCR5FMLANCFFCV-001 "3-tests\5 - FATURAMENTO\M_LANC_FFCV.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/SCR5FMLANCFFCV-001 "3-tests\5 - FATURAMENTO\M_LANC_FFCV.robot"
# firefox:        robot -v browser:headlessfirefox -d ./5-results/SCR5FMLANCFFCV-001 "3-tests\5 - FATURAMENTO\M_LANC_FFCV.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/5-FATURAMENTO/M_LANC_FFCV_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
 # Suite registrada no gerenciador de dados
${suite}          m_lanc_ffcv
 # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMLANCFFCV-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5FMLANCFFCV-001:Fluxo Principal" -d ./5-results/SCR5FMLANCFFCV-001 "3-tests/5-FATURAMENTO/M_LANC_FFCV.robot"
# robot -v browser:firefox -t "SCR5FMLANCFFCV-001:Fluxo Principal" -d ./5-results/SCR5FMLANCFFCV-001 "3-tests/5-FATURAMENTO/M_LANC_FFCV.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMLANCFFCV-001"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Ambulatorial"@nprint @nao






