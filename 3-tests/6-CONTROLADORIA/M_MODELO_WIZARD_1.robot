#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_MODELO_WIZARD
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_MODELO_WIZARD_1 "3-tests/6-CONTROLADORIA/M_MODELO_WIZARD_1.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_MODELO_WIZARD_1 "3-tests/6-CONTROLADORIA/M_MODELO_WIZARD_1.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_MODELO_WIZARD_1 "3-tests/6-CONTROLADORIA/M_MODELO_WIZARD_1.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_MODELO_WIZARD_1 "3-tests/6-CONTROLADORIA/M_MODELO_WIZARD_1.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/6-CONTROLADORIA/M_MODELO_WIZARD_1_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_MODELO_WIZARD_1
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6COMMODELOWIZARD-001:Fluxo principal
# robot -v browser:chrome -t "SCR6COMMODELOWIZARD-001:Fluxo principal" -d ./5-results/M_MODELO_WIZARD_1 "3-tests/6-CONTROLADORIA/M_MODELO_WIZARD_1.robot"
# robot -v browser:firefox -t "SCR6COMMODELOWIZARD-001:Fluxo principal" -d ./5-results/M_MODELO_WIZARD_1 "3-tests/6-CONTROLADORIA/M_MODELO_WIZARD_1.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6COMMODELOWIZARD-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Clicar no botao Adicionar da tela modelo contabil
    Preencher os campos da tabela |${dados}[codigo]|,|${dados}[descricao]|
    Clicar no botao Salvar do menu
    ### O teste não possui mensagem ao salvar, por isso não há validação    