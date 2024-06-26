#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela M_FECH_CONT - fechamento do exercício contábil. 
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_FECH_CONT "3-tests\6-CONTROLADORIA\M_FECH_CONT.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_FECH_CONT "3-tests\6-CONTROLADORIA\M_FECH_CONT.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_FECH_CONT.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_FECH_CONT.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/6-CONTROLADORIA/M_FECH_CONT_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    
# Suite registrada no gerenciador de dados
${suite}           m_fech_cont
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-8719:Fluxo Principal
# robot -v browser:chrome -t "SMF-8719:Fluxo Principal" -d ./5-results/SMF-8719 "3-tests/6-CONTROLADORIA\M_FECH_CONT.robot"
# robot -v browser:firefox -t "SMF-8719:Fluxo Principal" -d ./5-results/SMF-8719 "3-tests/6-CONTROLADORIA\M_FECH_CONT.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-8719"
    Acessar |${dados}[tela]|@nprint @las
    Preencher Campo Ano |${dados}[cpAno]|
    Selecionar o mês 
    Selecionar a Empresa 
    Clicar no botao [Fechar]
    Valida Mensagem     ${mensagemEsperada}     ${dados}[msgEsperada]
    Clicar no botao [OK]
    Selecionar o mês 
    Selecionar a Empresa 
    Clicar no botao [Abrir]
    Valida Mensagem     ${mensagemEsperada}     ${dados}[msgEsperada2]
    Clicar no botao [OK]