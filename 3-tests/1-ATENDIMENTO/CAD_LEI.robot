#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela CAD_LEI
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/CAD_LEI "3-tests/1-ATENDIMENTO/CAD_LEI.robot"
# firefox: robot -v browser:firefox -d ./5-results/CAD_LEI "3-tests/1-ATENDIMENTO/CAD_LEI.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/CAD_LEI "3-tests/1-ATENDIMENTO/CAD_LEI.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/CAD_LEI "3-tests/1-ATENDIMENTO/CAD_LEI.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/bd/BancoDados.robot
Resource            ../../1-resources/ContextoSteps.robot 
Resource            ../../1-resources/1-ATENDIMENTO/CAD_LEI_STEPS.robot
Resource            ../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            CAD_LEI
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-8593:Cadastro de Leitos
# robot -v browser:chrome -t "SMF-8593:Cadastro de Leitos" -d ./5-results/SMF-8593 "3-tests/1-ATENDIMENTO/CAD_LEI.robot"
# robot -v browser:firefox -t "SMF-8593:Cadastro de Leitos" -d ./5-results/SMF-8593 "3-tests/1-ATENDIMENTO/CAD_LEI.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-8593"
    Acessar a tela "Atendimento>Internação>Tabelas>Leitos"@nprint @las
    Clicar no botão Pesquisar
    Preencher o campo código de unidade da internacao |${dados}[codigo]|
    Clicar no botão Executar 
    Preencher os campos da tabela |${dados}[leito]|,|${dados}[descResumida]|,|${dados}[enferm]|,|${dados}[acomod]|
    Clicar no botão Salvar do menu
    Validar mensagem de confirmação
