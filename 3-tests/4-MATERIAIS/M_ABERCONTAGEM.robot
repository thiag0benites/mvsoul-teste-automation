#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_ABERCONTAGEM - Contagem (Abertura de Inventário)
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_ABERCONTAGEM "3-tests\Materiais\Almoxarifado\Inventario/M_ABERCONTAGEM.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_ABERCONTAGEM "3-tests\Materiais\Almoxarifado\Inventario/M_ABERCONTAGEM.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_ABERCONTAGEM "3-tests\Materiais\Almoxarifado\Inventario/M_ABERCONTAGEM.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_ABERCONTAGEM "3-tests\Materiais\Almoxarifado\Inventario/M_ABERCONTAGEM.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/bd/BancoDados.robot
Resource            ../../1-resources/ContextoSteps.robot 
Resource            ../../1-resources/M_ABERCONTAGEM_STEPS.robot
Resource            ../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_ABERCONTAGEM
# Recebe dados do gerenciador
${dados}

*** Test Case ***

M_ABERCONTAGEM-001:Abertura de Inventario (Processo de conferencia) Tipo de contagem
# robot -v browser:chrome -t "M_ABERCONTAGEM-001:Abertura de Inventario (Processo de conferencia) Tipo de contagem" -d ./5-results/M_ABERCONTAGEM-001 "3-tests/4-MATERIAIS/M_ABERCONTAGEM.robot"
# robot -v browser:firefox -t "M_ABERCONTAGEM-001:Abertura de Inventario (Processo de conferencia) Tipo de contagem" -d ./5-results/M_ABERCONTAGEM-001 "3-tests/4-MATERIAIS/M_ABERCONTAGEM.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "M_ABERCONTAGEM-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Inventário>Abertura do Inventário"@nprint @las
    Usuário deverá preencher o campo <Estoque>"${dados}[estoque]"
    Usuário deverá preencher o campo <Produto>"${dados}[produto]"
    Clicar no botão salvar Abertura

M_ABERCONTAGEM-002:Abertura de Inventario adicionando produtos ao estoque 
# robot -v browser:chrome -t "M_ABERCONTAGEM-002:Abertura de Inventario adicionando produtos ao estoque" -d ./5-results/M_ABERCONTAGEM-002 "3-tests/4-MATERIAIS/M_ABERCONTAGEM.robot"
# robot -v browser:firefox -t "M_ABERCONTAGEM-002:Abertura de Inventario adicionando produtos ao estoque " -d ./5-results/M_ABERCONTAGEM-002 "3-tests/4-MATERIAIS/M_ABERCONTAGEM.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "M_ABERCONTAGEM-002"
    Acessar a tela "Materiais e Logística>Almoxarifado>Inventário>Abertura do Inventário"@nprint @las
    Usuário deverá preencher o campo <Estoque>"${dados}[estoque]"
    Usuário deverá preencher o campo <Produto>"${dados}[produto]"
    Clicar no botão salvar Abertura




