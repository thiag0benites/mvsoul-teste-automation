#################################################################################################################################################################
# Autor: José Neto
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:firefox -d ./5-results/R_EXTRATO_STEPS "3-tests\6 - CONTROLADORIA\R_EXTRATO.robot"
# chrome:         robot -v browser:chrome -d ./5-results/R_EXTRATO_STEPS "3-tests\6 - CONTROLADORIA\R_EXTRATO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/R_EXTRATO_STEPS "3-tests\6 - CONTROLADORIA\R_EXTRATO.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/R_EXTRATO_STEPS "3-tests\6 - CONTROLADORIA\R_EXTRATO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/6-CONTROLADORIA/R_EXTRATO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          r_extrato
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6CREXTRATO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR6CREXTRATO-001:Fluxo Principal"
# robot -v browser:firefox -t "SCR6CREXTRATO-001:Fluxo Principal"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6CREXTRATO-001"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Relatórios>Controle Bancário>Extrato Bancário"@nprint @nao