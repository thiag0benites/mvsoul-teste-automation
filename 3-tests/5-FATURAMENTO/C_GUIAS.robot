#################################################################################################################################################################
# Autor: Marcos Costa
# Decrição: Fluxo Principal da Tela de Central de Guias (Autorizações)
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -t "SCR5FCGUIAS001:Fluxo Principal" -d ./5-results/SCR5FCGUIAS001 "3-tests/5-FATURAMENTO/C_GUIAS.robot"
# chrome:         robot -v browser:firefox -t "SCR5FCGUIAS001:Fluxo Principal" -d ./5-results/SCR5FCGUIAS001 "3-tests/5-FATURAMENTO/C_GUIAS.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -t "SCR5FCGUIAS001:Fluxo Principal" -d ./5-results/SCR5FCGUIAS001 "3-tests/5-FATURAMENTO/C_GUIAS.robot"
# chrome:         robot -v browser:headlessfirefox -t "SCR5FCGUIAS001:Fluxo Principal" -d ./5-results/SCR5FCGUIAS001 "3-tests/5-FATURAMENTO/C_GUIAS.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/5-FATURAMENTO/C_GUIAS_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
# Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}          c_guias
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
# SMF-4139/SMF-4140/SMF-2386/SMF-4155/SMF-7736/SMF-9119/SMF-9120/
SCR5FCGUIAS001:Fluxo Principal
    # robot -v browser:chrome -t "SCR5FCGUIAS001:Fluxo Principal" -d ./5-results/SCR5FCGUIAS001 "3-tests/5-FATURAMENTO/C_GUIAS.robot"
    # robot -v browser:firefox -t "SCR5FCGUIAS001:Fluxo Principal" -d ./5-results/SCR5FCGUIAS001 "3-tests/5-FATURAMENTO/C_GUIAS.robot"
    # ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FCGUIAS001"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Consultas>Guias"@nprint @las
    # Informar no Campo <Tabela> |${dados}[Tab]| <Procedimento> |${dados}[ProFat]| <Laboratorio> |${dados}[Lab]| <Medicamento> |${dados}[Med]| <Apresentacao> |${dados}[Apres]|
    # Clicar no Botao <Salvar> |${dados}[Salvar]|