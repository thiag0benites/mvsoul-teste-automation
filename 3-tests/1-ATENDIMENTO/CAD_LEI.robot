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
Resource            ../../1-resources/1-ATENDIMENTO/CAD_LEI_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            cad_lei
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1ACADLEI-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1ACADLEI-001:Fluxo Principal" -d ./5-results/CAD_LEI "3-tests/1-ATENDIMENTO/CAD_LEI.robot"
# robot -v browser:firefox -t "SCR1ACADLEI-001:Fluxo Principal" -d ./5-results/CAD_LEI "3-tests/1-ATENDIMENTO/CAD_LEI.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1ACADLEI-001"
    Acessar a tela "Atendimento>Internação>Tabelas>Leitos"@nprint @las
    Clicar no botao Pesquisar
    Preencher o campo codigo de unidade da internacao |${dados}[codigo]|
    Clicar no botao Executar
    Preencher os campos da tabela |${dados}[leito]|,|${dados}[descResumida]|,|${dados}[enferm]|,|${dados}[acomod]|
    Clicar no botao Salvar
    Validar mensagem de confirmacao ao cadastrar o leito |${dados}[mensagem]|