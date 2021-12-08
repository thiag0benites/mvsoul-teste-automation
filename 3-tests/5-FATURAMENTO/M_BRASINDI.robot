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

Resource            ../../1-resources/5-FATURAMENTO/M_BRASINDI_STEPS.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
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
    Informar no Campo 'Tabela' a Tabela Criada para Inserir os dados da Tabela Brasindice - Tabela |${dados}[Tab]|
    Informar no Campo 'Procedimento' o Codigo do Procedimento da Tabela Brasindice - Cod. Procedimento |${dados}[ProFat]|
    Informar no Campo 'Laboratorio' o Codigo do Laboratorio Desejado para a Importacao - Laboratorio |${dados}[Lab]|	
    Informar no Campo 'Medicamento' o Codigo do Medicamento - Medicamento |${dados}[Med]|
    Informar no Campo 'Apresentacao' o Codigo de Identificacao do Medicamento - Apresentacao |${dados}[Apres]|
    Informar no Campo 'Qtd de Apres' a Quantidade de Divisao Aplicada ao Preco - Qtd de Apres |${dados}[Qtd]|
    Informar no Campo 'Codigo TISS' Numero de Codigo TISS de Relacionado - Cod. Tiss |${dados}[Tiss]|
    Informar no Campo 'Codigo TUSS' Numero de Codigo TUSS de Relacionado - Cod. Tuss |${dados}[Tuss]|
    Clicar no Botao 'Salvar' |${dados}[Salvar]|