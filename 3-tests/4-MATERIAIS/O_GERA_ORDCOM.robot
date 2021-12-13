#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Este caso de teste tem como objetivo permitir formação da ordem de compra após validar valor de empate
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/SRC4OGERAORDCOM "3-tests/4-MATERIAIS/O_GERA_ORDCOM.robot"
# firefox: robot -v browser:firefox -d ./5-results/SRC4OGERAORDCOM "3-tests/4-MATERIAIS/O_GERA_ORDCOM.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SRC4OGERAORDCOM "3-tests/4-MATERIAIS/O_GERA_ORDCOM.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SRC4OGERAORDCOM "3-tests/4-MATERIAIS/O_GERA_ORDCOM.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/O_GERA_ORDCOM_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao
### 

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            O_GERA_ORDCOM
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SRC4OGERAORDCOM-001:Fluxo Principal
# robot -v browser:chrome -t "SRC4OGERAORDCOM-001:Gerar Ordem de Compra" -d ./5-results/SRC4OGERAORDCOM "3-tests/4-MATERIAIS/O_GERA_ORDCOM.robot"
# robot -v browser:firefox -t "SRC4OGERAORDCOM-001:Gerar Ordem de Compra" -d ./5-results/SRC4OGERAORDCOM "3-tests/4-MATERIAIS/O_GERA_ORDCOM.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SRC4OGERAORDCOM-001"
    Acessar a tela "Materiais e Logística>Compras>Compras>Ordem de Compra>Formação da Ordem de Compra"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Solicitacao de Compra |${dados}[solicitacaoDeCompra]| e Consultar
    Validar Consulta |${dados}[validaConsulta]|
    Clicar Botao |Solicitacao de Compra| e Validar mensagem |${dados}[mensagemSucesso]|