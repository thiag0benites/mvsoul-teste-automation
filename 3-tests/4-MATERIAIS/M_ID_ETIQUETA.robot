#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_ID_ETIQUETA
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_ID_ETIQUETA "3-tests/4-MATERIAIS/M_ID_ETIQUETA.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_ID_ETIQUETA "3-tests/4-MATERIAIS/M_ID_ETIQUETA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_ID_ETIQUETA "3-tests/4-MATERIAIS/M_ID_ETIQUETA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_ID_ETIQUETA "3-tests/4-MATERIAIS/M_ID_ETIQUETA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/M_ID_ETIQUETA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
# Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_ID_ETIQUETA
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMIDETIQUETA-001:Fluxo principal
# robot -v browser:chrome -t "SCR4MMIDETIQUETA-001:Fluxo principal" -d ./5-results/M_ID_ETIQUETA "3-tests/4-MATERIAIS/M_ID_ETIQUETA.robot"
# robot -v browser:firefox -t "SCR4MMIDETIQUETA-001:Fluxo principal" -d ./5-results/M_ID_ETIQUETA "3-tests/4-MATERIAIS/M_ID_ETIQUETA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMIDETIQUETA-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Tabelas>Gerais>Identificador Etiqueta"@nprint @las
    Preencher os campos da tabela Identificador Etiqueta |${dados}[produto]|,|${dados}[unidade]|,|${dados}[lote]|,|${dados}[quantidade]|
    Clicar no botao Salvar 
    Validar cadastro realizado do identificador |${dados}[mensagem]|