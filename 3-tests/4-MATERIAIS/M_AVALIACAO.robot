#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_AVALIACAO 
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_AVALIACAO "3-tests/4-MATERIAIS/M_AVALIACAO.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_AVALIACAO "3-tests/4-MATERIAIS/M_AVALIACAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_AVALIACAO "3-tests/4-MATERIAIS/M_AVALIACAO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_AVALIACAO "3-tests/4-MATERIAIS/M_AVALIACAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/bd/BancoDados.robot
Resource            ../../1-resources/ContextoSteps.robot 
Resource            ../../1-resources/4-MATERIAIS/M_AVALIACAO_STEPS.robot
Resource            ../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_AVALIACAO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMAVALIACAO-001:Fluxo principal
# robot -v browser:chrome -t "SCR4MMAVALIACAO-001:Fluxo principal" -d ./5-results/M_AVALIACAO "3-tests/4-MATERIAIS/M_AVALIACAO.robot"
# robot -v browser:firefox -t "SCR4MMAVALIACAO-001:Fluxo principal" -d ./5-results/M_AVALIACAO "3-tests/4-MATERIAIS/M_AVALIACAO.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMAVALIACAO-001"
    Acessar a tela "Materiais e Logística>Compras>Compras>Ordem de Compra>Avaliação do Fornecedor"@nprint @las
    Preencher os campos da tela de avaliacao |${dados}[fornecedor]|,|${dados}[questionario]|
    Preencher o campo resposta da tabela |${dados}[resposta]|
    Clicar no botao Salvar da tela
    Validar cadastro da avaliacao do fornecedor |${dados}[mensagem]|