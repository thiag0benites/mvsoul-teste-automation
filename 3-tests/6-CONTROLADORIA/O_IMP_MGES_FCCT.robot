#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela O_IMP_MGES_FCCT
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/O_IMP_MGES_FCCT "3-tests\6-CONTROLADORIA\O_IMP_MGES_FCCT.robot"
# firefox: robot -v browser:firefox -d ./5-results/O_IMP_MGES_FCCT "3-tests\6-CONTROLADORIA\O_IMP_MGES_FCCT.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\O_IMP_MGES_FCCT.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\O_IMP_MGES_FCCT.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/6-CONTROLADORIA/O_IMP_MGES_FCCT_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
#Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}           O_IMP_MGES_FCCT
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6OIMPMEGSFCCT-001:Fluxo Principal
# robot -v browser:chrome -t "SCR6OIMPMEGSFCCT-001:Fluxo Principal" -d ./5-results/SCR6OIMPMEGSFCCT-001 "3-tests/6-CONTROLADORIA/O_IMP_MGES_FCCT.robot"
# robot -v browser:firefox -t "SCR6OIMPMEGSFCCT-001:Fluxo Principal" -d ./5-results/SCR6OIMPMEGSFCCT-001 "3-tests/6-CONTROLADORIA/O_IMP_MGES_FCCT.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6OIMPMEGSFCCT-001"
    Acessar |${dados}[tela]|@nprint @las
    Preencher campo Data processamento |${dados}[dtProcessamento]|
    #Selecionar o checkBox [Todos]
    Clicar no botao [Confirmar]
    Clicar no botao [Sim]
    Captura codigo lote|${suite}|${dados}[id]|
    Clicar no botao [OK]