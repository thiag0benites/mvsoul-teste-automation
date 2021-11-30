#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_PRODUTO_FRACIONAMENTO
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_PRODUTO_FRACIONAMENTO "3-tests/4-MATERIAIS/M_PRODUTO_FRACIONAMENTO.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_PRODUTO_FRACIONAMENTO "3-tests/4-MATERIAIS/M_PRODUTO_FRACIONAMENTO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_PRODUTO_FRACIONAMENTO "3-tests/4-MATERIAIS/M_PRODUTO_FRACIONAMENTO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_PRODUTO_FRACIONAMENTO "3-tests/4-MATERIAIS/M_PRODUTO_FRACIONAMENTO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/bd/BancoDados.robot
Resource            ../../1-resources/ContextoSteps.robot 
Resource            ../../1-resources/4-MATERIAIS/M_PRODUTO_FRACIONAMENTO_STEPS.robot
Resource            ../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_PRODUTO_FRACIONAMENTO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SRC4MMPRODUTOFRACIONAMENTO-001:Fluxo Principal
# robot -v browser:chrome -t "SRC4MMPRODUTOFRACIONAMENTO-001:Fluxo Principal" -d ./5-results/M_PRODUTO_FRACIONAMENTO "3-tests/4-MATERIAIS/M_PRODUTO_FRACIONAMENTO.robot"
# robot -v browser:firefox -t "SRC4MMPRODUTOFRACIONAMENTO-001:Fluxo Principal" -d ./5-results/M_PRODUTO_FRACIONAMENTO "3-tests/4-MATERIAIS/M_PRODUTO_FRACIONAMENTO.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SRC4MMPRODUTOFRACIONAMENTO-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las    
    Preencher o campo estoque |${dados}[numEstoque]|
    Preencher os campos |${dados}[codProduto]|,|${dados}[lote]|,|${dados}[quantidade]|,|${dados}[unidade]|,|${dados}[unidadeFracionada]|
    Clicar no botao Salvar da tela
    Clicar no botao Sim no modal de notificacao
    Validar mensagem ao salvar |${dados}[mensagem]|