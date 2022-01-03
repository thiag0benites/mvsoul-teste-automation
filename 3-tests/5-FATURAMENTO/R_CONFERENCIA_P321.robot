#################################################################################################################################################################
# Autor: Marcos Costa
# Decrição: Relatório de Controle de Conferencia por Paciente
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -t "SCR5FRCONFERENCIAP321001:Fluxo Principal" -d ./5-results/SCR5FRCONFERENCIAP321001 "3-tests/5-FATURAMENTO/R_CONFERENCIA_P321.robot"
# chrome:         robot -v browser:firefox -t "SCR5FRCONFERENCIAP321001:Fluxo Principal" -d ./5-results/SCR5FRCONFERENCIAP321001 "3-tests/5-FATURAMENTO/R_CONFERENCIA_P321.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -t "SCR5FRCONFERENCIAP321001:Fluxo Principal" -d ./5-results/SCR5FRCONFERENCIAP321001 "3-tests/5-FATURAMENTO/R_CONFERENCIA_P321.robot"
# chrome:         robot -v browser:headlessfirefox -t "SCR5FRCONFERENCIAP321001:Fluxo Principal" -d ./5-results/SCR5FRCONFERENCIAP321001 "3-tests/5-FATURAMENTO/R_CONFERENCIA_P321.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/5-FATURAMENTO/R_CONFERENCIA_P321_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
# Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}          r_conferencia_p321
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FRCONFERENCIAP321001:Fluxo Principal
    # robot -v browser:chrome -t "SCR5FRCONFERENCIAP321001:Fluxo Principal" -d ./5-results/SCR5FRCONFERENCIAP321001 "3-tests/5-FATURAMENTO/R_CONFERENCIA_P321.robot"
    # robot -v browser:firefox -t "SCR5FRCONFERENCIAP321001:Fluxo Principal" -d ./5-results/SCR5FRCONFERENCIAP321001 "3-tests/5-FATURAMENTO/R_CONFERENCIA_P321.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FRCONFERENCIAP321001"
    Acessar a tela "Faturamento>Faturamento Ambulatorial SUS (BPA e APAC)>Relatórios>Operacionais>Controle de Conferencia por Paciente"@nprint @las
    Informar no Relatorio <Fatura> |${dados}[Fatura]| <Paciente> |${dados}[Paciente]| <Atendimento> |${dados}[Atendimento]|
    Captura da ulr do pdf gerado <suite> |${suite}| <id> |${dados}[id]|  