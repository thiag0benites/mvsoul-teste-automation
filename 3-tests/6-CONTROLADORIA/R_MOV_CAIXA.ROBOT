#################################################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:    robot -v browser:chrome -d ./5-results/SCR6CMCONCOR-001 "3-tests\6-CONTROLADORIA/R_MOV_CAIXA.robot"
# firefox:   robot -v browser:firefox -d ./5-results/SCR6CMCONCOR-001 "3-tests\6-CONTROLADORIA/R_MOV_CAIXA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:    robot -v browser:headlesschrome -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\6-CONTROLADORIA/R_MOV_CAIXA.robot"
# firefox:   robot -v browser:headlessfirefox -d ./5-results/C_LISTAGEM_CONFERENCIA_RPA_STEPS "3-tests\6-CONTROLADORIA/R_MOV_CAIXA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/6-CONTROLADORIA/R_MOV_CAIXA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
 # Suite registrada no gerenciador de dados
${suite}        R_MOV_CAIXA   
 # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6CRMOVCAIXA-001:Fluxo Principal          # : 
# robot -v browser:chrome -t "SCR6CRMOVCAIXA-001:Fluxo Principal" -d ./5-results/SCR6CRMOVCAIXA-001 "3-tests/6-CONTROLADORIA/R_MOV_CAIXA.robot"
# robot -v browser:firefox -t "SCR6CRMOVCAIXA-001:Fluxo Principal" -d ./5-results/SCR6CRMOVCAIXA-001 "3-tests/6-CONTROLADORIA/R_MOV_CAIXA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6CRMOVCAIXA-001"
    #Acessar a tela "Controladoria>Caixa>Relatórios>Extrato Caixa/Banco"@nprint @las
    #Acessar a tela pela busca |R_MOV_CAIXA||Extrato Caixa/Banco|@las
    Acessar a tela pelo primeiro registro |R_MOV_CAIXA| @las

    Preencher Empresa e Caixa |${dados}[Empresa]| |${dados}[Caixa]|
    Validar Relatorio