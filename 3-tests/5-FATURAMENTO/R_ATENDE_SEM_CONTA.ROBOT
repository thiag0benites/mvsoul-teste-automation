#################################################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:    robot -v browser:chrome -d ./5-results/SCR5CMCONCOR-001 "3-tests\5-FATURAMENTO/R_ATENDE_SEM_CONTA.robot"
# firefox:   robot -v browser:firefox -d ./5-results/SCR5CMCONCOR-001 "3-tests\5-FATURAMENTO/R_ATENDE_SEM_CONTA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:    robot -v browser:headlesschrome -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\5-FATURAMENTO/R_ATENDE_SEM_CONTA.robot"
# firefox:   robot -v browser:headlessfirefox -d ./5-results/C_LISTAGEM_CONFERENCIA_RPA_STEPS "3-tests\5-FATURAMENTO/R_ATENDE_SEM_CONTA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/5-FATURAMENTO/R_ATENDE_SEM_CONTA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
 # Suite registrada no gerenciador de dados
${suite}        R_ATENDE_SEM_CONTA   
 # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5CRATENDESEMCONTA-001:Fluxo Principal          # : 
# robot -v browser:chrome -t "SCR5CRATENDESEMCONTA-001:Fluxo Principal" -d ./5-results/SCR5CRATENDESEMCONTA-001 "3-tests/5-FATURAMENTO/R_ATENDE_SEM_CONTA.robot"
# robot -v browser:firefox -t "SCR5CRATENDESEMCONTA-001:Fluxo Principal" -d ./5-results/SCR5CRATENDESEMCONTA-001 "3-tests/5-FATURAMENTO/R_ATENDE_SEM_CONTA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5CRATENDESEMCONTA-001"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Relatórios>Operacionais>Situação das Contas"@nprint @las

    Preencher Intervalo Fixo |${dados}[DataIni]| |${dados}[DataFim]|
    Validar Relatorio