#################################################################################################################################################################
# Autor: Marcos Costa
# Decrição: Importar os dados da tabela BRASINDICE para o sistema. 
# A importação corresponde a conversão que incidirá sobre uma determinada tabela para fins de faturamento.
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -t "SCR5FMSIMPRO001:Fluxo Principal" -d ./5-results/SCR5FMSIMPRO001 "3-tests/5-FATURAMENTO/M_SIMPRO.robot"
# chrome:         robot -v browser:firefox -t "SCR5FMSIMPRO001:Fluxo Principal" -d ./5-results/SCR5FMSIMPRO001 "3-tests/5-FATURAMENTO/M_SIMPRO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -t "SCR5FMSIMPRO001:Fluxo Principal" -d ./5-results/SCR5FMSIMPRO001 "3-tests/5-FATURAMENTO/M_SIMPRO.robot"
# chrome:         robot -v browser:headlessfirefox -t "SCR5FMSIMPRO001:Fluxo Principal" -d ./5-results/SCR5FMSIMPRO001 "3-tests/5-FATURAMENTO/M_SIMPRO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes

Resource            ../../1-resources/5-FATURAMENTO/M_SIMPRO_STEPS.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao


*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}          m_simpro
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
# SMF-5234
SCR5FMSIMPRO001:Fluxo Principal
    # robot -v browser:chrome -t "SCR5FMSIMPRO001:Fluxo Principal" -d ./5-results/SCR5FMSIMPRO001 "3-tests/5-FATURAMENTO/M_SIMPRO.robot"
    # robot -v browser:firefox -t "SCR5FMSIMPRO001:Fluxo Principal" -d ./5-results/SCR5FMSIMPRO001 "3-tests/5-FATURAMENTO/M_SIMPRO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMSIMPRO001"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Configurações>Preços do Brasíndice"@nprint @las
    Informar no Campo 'Tabela' a Tabela Criada para Inserir os dados da Tabela Brasindice - Tabela |${dados}[Tab]|
    