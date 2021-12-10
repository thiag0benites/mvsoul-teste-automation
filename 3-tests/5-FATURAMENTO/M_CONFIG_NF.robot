#################################################################################################################################################################
# Autor: Marcos Costa
# Descrição: Configurar e centralizar as parametrizações do processo da nota fiscal.
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -t "SCR5FMCONFIGNF001:Fluxo Principal" -d ./5-results/SCR5FMCONFIGNF001 "3-tests/5-FATURAMENTO/M_CONFIG_NF.robot"
# chrome:         robot -v browser:firefox -t "SCR5FMCONFIGNF001:Fluxo Principal" -d ./5-results/SCR5FMCONFIGNF001 "3-tests/5-FATURAMENTO/M_CONFIG_NF.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -t "SCR5FMCONFIGNF001:Fluxo Principal" -d ./5-results/SCR5FMCONFIGNF001 "3-tests/5-FATURAMENTO/M_CONFIG_NF.robot"
# chrome:         robot -v browser:headlessfirefox -t "SCR5FMCONFIGNF001:Fluxo Principal" -d ./5-results/SCR5FMCONFIGNF001 "3-tests/5-FATURAMENTO/M_CONFIG_NF.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/5-FATURAMENTO/M_CONFIG_NF_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
# Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}         m_config_nf
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
# SMF-5504
SCR5FMCONFIGNF001:Fluxo Principal
    # robot -v browser:chrome -t "SCR5FMCONFIGNF001:Fluxo Principal" -d ./5-results/SCR5FMCONFIGNF001 "3-tests/5-FATURAMENTO/M_CONFIG_NF.robot"
    # robot -v browser:firefox -t "SCR5FMCONFIGNF001:Fluxo Principal" -d ./5-results/SCR5FMCONFIGNF001 "3-tests/5-FATURAMENTO/M_CONFIG_NF.robot"
    # ${dados}  Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMCONFIGNF001"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Configurações>Configurações da Nota Fiscal"@nprint @las
    # Informar no Campo <Convenio> |${dados}[Conv]| <Desc. Fatura> |${dados}[DescFat]| <Competencia> |${dados}[Comp]|
    # Clicar Salvar |${dados}[Salvar]|