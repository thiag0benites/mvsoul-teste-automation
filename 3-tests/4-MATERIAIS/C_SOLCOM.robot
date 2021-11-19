#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela C_SOLCOM - fechamento do exercício contábil. 
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/C_SOLCOM "3-tests\4-MATERIAIS\C_SOLCOM.robot"
# firefox: robot -v browser:firefox -d ./5-results/C_SOLCOM "3-tests\4-MATERIAIS\C_SOLCOM.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\C_SOLCOM.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\C_SOLCOM.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/C_SOLCOM_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}           c_solcom
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-4050:Fluxo Principal
# robot -v browser:chrome -t "SMF-4050:Fluxo Principal" -d ./5-results/SMF-4050 "3-tests/4-MATERIAIS/C_SOLCOM.robot"
# robot -v browser:firefox -t "SMF-4050:Fluxo Principal" -d ./5-results/SMF-4050 "3-tests/4-MATERIAIS/C_SOLCOM.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4050"
    Acessar a tela "Materiais e Logística>Compras>Consultas>Solicitação de Compras"@nprint @las
    Preencher Campo codigo |${dados}[codigo]|
    Clicar no botao [Executar]
    Clicar no botao [Histórico de Autorização]
    Validar exibicao do pop up Historico