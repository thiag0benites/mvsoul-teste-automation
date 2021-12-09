#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela M_COPIA_USUARIOS_SIMPLES.robot
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_COLPRE "3-tests\7-APOIO_TI\M_COPIA_USUARIOS_SIMPLES.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_COLPRE "3-tests\7-APOIO_TI\M_COPIA_USUARIOS_SIMPLES.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\7-APOIO_TI/M_COPIA_USUARIOS_SIMPLES.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\7-APOIO_TI/M_COPIA_USUARIOS_SIMPLES.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/7-APOIO_TI/M_COPIA_USUARIOS_SIMPLES_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
#Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}           m_copia_usuarios_simples
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-6540:Fluxo Principal
# robot -v browser:chrome -t "SMF-6540:Fluxo Principal" -d ./5-results/SMF-6540 "3-tests/7-APOIO_TI/M_COPIA_USUARIOS_SIMPLES.robot"
# robot -v browser:firefox -t "SMF-6540:Fluxo Principal" -d ./5-results/SMF-6540 "3-tests/7-APOIO_TI/M_COPIA_USUARIOS_SIMPLES.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-6540"
    Acessar |${dados}[tela]|@nprint @las
    Preencher os campos Usuario Origem|${dados}[usrOrigem]|, Usuario Destino|${dados}[usrDestino]|
    Clicar no botao [Copiar Usuario]
    Clicar no botao [OK]
    Valida Mensagem     ${mensagemPop}     ${dados}[msgEsperada]
    