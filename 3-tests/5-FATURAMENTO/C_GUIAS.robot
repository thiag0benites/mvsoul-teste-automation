#################################################################################################################################################################
# Autor: Marcos Costa
# Descrição: 
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -t "SCR5FCGUIASF001:Fluxo Principal" -d ./5-results/SCR5FCGUIASF001 "3-tests/5-FATURAMENTO/C_GUIAS.robot"
# chrome:         robot -v browser:firefox -t "SCR5FCGUIASF001:Fluxo Principal" -d ./5-results/SCR5FCGUIASF001 "3-tests/5-FATURAMENTO/C_GUIAS.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -t "SCR5FCGUIASF001:Fluxo Principal" -d ./5-results/SCR5FCGUIASF001 "3-tests/5-FATURAMENTO/C_GUIAS.robot"
# chrome:         robot -v browser:headlessfirefox -t "SCR5FCGUIASF001:Fluxo Principal" -d ./5-results/SCR5FCGUIASF001 "3-tests/5-FATURAMENTO/C_GUIAS.robot"
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
# ${suite}         c_guias
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
# 
SCR5FCGUIASF001:Fluxo Principal
    # robot -v browser:chrome -t "SCR5FCGUIASF001:Fluxo Principal" -d ./5-results/SCR5FCGUIASF001 "3-tests/5-FATURAMENTO/C_GUIAS.robot"
    # robot -v browser:firefox -t "SCR5FCGUIASF001:Fluxo Principal" -d ./5-results/SCR5FCGUIASF001 "3-tests/5-FATURAMENTO/C_GUIAS.robot"
    # ${dados}  Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FCGUIASF001"
    # Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"@nprint @las
    # Informa na Tela Exportacao Producao BPA <Competencia> |${dados}[Comp]| 