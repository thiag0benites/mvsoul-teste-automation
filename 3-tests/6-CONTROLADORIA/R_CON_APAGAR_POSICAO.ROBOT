#################################################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:    robot -v browser:chrome -d ./5-results/SCR6CMCONCOR-001 "3-tests\6-CONTROLADORIA/R_CON_APAGAR_POSICAO.robot"
# firefox:   robot -v browser:firefox -d ./5-results/SCR6CMCONCOR-001 "3-tests\6-CONTROLADORIA/R_CON_APAGAR_POSICAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:    robot -v browser:headlesschrome -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\6-CONTROLADORIA/R_CON_APAGAR_POSICAO.robot"
# firefox:   robot -v browser:headlessfirefox -d ./5-results/C_LISTAGEM_CONFERENCIA_RPA_STEPS "3-tests\6-CONTROLADORIA/R_CON_APAGAR_POSICAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/6-CONTROLADORIA/R_CON_APAGAR_POSICAO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
 # Suite registrada no gerenciador de dados
${suite}        R_CON_APAGAR_POSICAO   
 # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6CRCONAPAGARPOSICAO-001:Fluxo Principal          # : 
# robot -v browser:chrome -t "SCR6CRCONAPAGARPOSICAO-001:Fluxo Principal" -d ./5-results/SCR6CRCONAPAGARPOSICAO-001 "3-tests/6-CONTROLADORIA/R_CON_APAGAR_POSICAO.robot"
# robot -v browser:firefox -t "SCR6CRCONAPAGARPOSICAO-001:Fluxo Principal" -d ./5-results/SCR6CRCONAPAGARPOSICAO-001 "3-tests/6-CONTROLADORIA/R_CON_APAGAR_POSICAO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6CRCONAPAGARPOSICAO-001"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Relatórios>Contas a Pagar>A Pagar>Posição de Contas a Pagar"@nprint @las
    #Acessar a tela pela busca |R_CON_APAGAR_POSICAO||A Receber|@las
    #Acessar a tela pelo primeiro registro |R_CON_APAGAR_POSICAO| @las

    Preencher Intervalo Fixo |${dados}[DataIni]| |${dados}[DataFim]|
    Preencher Plano |${dados}[Plano]|
    Validar Relatorio