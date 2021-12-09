#################################################################################################################################################################
# Autor: Marcos Costa
# Decrição: Importar os dados da tabela BRASINDICE para o sistema.
# A importação corresponde a conversão que incidirá sobre uma determinada tabela para fins de faturamento.
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -t "SCR5FMBRASINDI001:Fluxo Principal" -d ./5-results/SCR5FMBRASINDI001 "3-tests/5-FATURAMENTO/M_BRASINDI.robot"
# chrome:         robot -v browser:firefox -t "SCR5FMBRASINDI001:Fluxo Principal" -d ./5-results/SCR5FMBRASINDI001 "3-tests/5-FATURAMENTO/M_BRASINDI.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -t "SCR5FMBRASINDI001:Fluxo Principal" -d ./5-results/SCR5FMBRASINDI001 "3-tests/5-FATURAMENTO/M_BRASINDI.robot"
# chrome:         robot -v browser:headlessfirefox -t "SCR5FMBRASINDI001:Fluxo Principal" -d ./5-results/SCR5FMBRASINDI001 "3-tests/5-FATURAMENTO/M_BRASINDI.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/5-FATURAMENTO/M_BRASINDI_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}          m_brasindi
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
# SMF-5300
SCR5FMBRASINDI001:Fluxo Principal
    # robot -v browser:chrome -t "SCR5FMBRASINDI001:Fluxo Principal" -d ./5-results/SCR5FMBRASINDI001 "3-tests/5-FATURAMENTO/M_BRASINDI.robot"
    # robot -v browser:firefox -t "SCR5FMBRASINDI001:Fluxo Principal" -d ./5-results/SCR5FMBRASINDI001 "3-tests/5-FATURAMENTO/M_BRASINDI.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMBRASINDI001"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Configurações>Preços do Brasíndice"@nprint @las
    Informar no Campo <Tabela> |${dados}[Tab]| <Procedimento> |${dados}[ProFat]| <Laboratorio> |${dados}[Lab]| <Medicamento> |${dados}[Med]| <Apresentacao> |${dados}[Apres]| <Qtd de Apres> |${dados}[Qtd]| <Cod. Tiss> |${dados}[Tiss]| <Cod. Tuss> |${dados}[Tuss]|
    Clicar no Botao <Salvar> |${dados}[Salvar]|