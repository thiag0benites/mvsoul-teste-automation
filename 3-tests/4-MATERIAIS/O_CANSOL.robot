#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Testes da tela O_CANSOL 
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/O_CANSOL "3-tests/4-MATERIAIS/O_CANSOL.robot"
# firefox: robot -v browser:firefox -d ./5-results/O_CANSOL "3-tests/4-MATERIAIS/O_CANSOL.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/O_CANSOL "3-tests/4-MATERIAIS/O_CANSOL.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/O_CANSOL "3-tests/4-MATERIAIS/O_CANSOL.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/O_CANSOL_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            O_CANSOL
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SRC4OCANSOL-001:Cancelar uma solicitação de compra
# robot -v browser:chrome -t "SRC4OCANSOL-001:Cancelar uma solicitação de compra" -d ./5-results/SRC4OCANSOL-001 "3-tests/4-MATERIAIS/O_CANSOL.robot"
# robot -v browser:firefox -t "SRC4OCANSOL-001:Cancelar uma solicitação de compra" -d ./5-results/SRC4OCANSOL-001"3-tests/4-MATERIAIS/O_CANSOL.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SRC4OCANSOL-001"
    Acessar a tela "Materiais e Logística>Compras>Compras>Solicitação de Compras>Cancelamento"@nprint @las
    Validar Acesso a Tela |${dados}[nomeTela]| 
    Preencher o Codigo |${dados}[codigo]| e validar Codigo
    Preencher o Cancelar |${dados}[motivoCancelamento]|
    Preencher o Descricao Nao Atendimento |${dados}[descricaoNaoAtendimento]| e validar mensagem |${dados}[mensagemSucesso]|