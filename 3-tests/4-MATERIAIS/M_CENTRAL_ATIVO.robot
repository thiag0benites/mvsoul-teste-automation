
#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela M_CENTRAL_ATIVO 
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_CENTRAL_ATIVO "3-tests\4-MATERIAIS\M_CENTRAL_ATIVO.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_CENTRAL_ATIVO "3-tests\4-MATERIAIS\M_CENTRAL_ATIVO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_CENTRAL_ATIVO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_CENTRAL_ATIVO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/M_CENTRAL_ATIVO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_CENTRAL_ATIVO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCRN4MMCENTRALATIVO-001:Fluxo Principal
# robot -v browser:chrome -t "SCRN4MMCENTRALATIVO-001:Fluxo Principal" -d ./5-results/SCRN4MMCENTRALATIVO-001 "3-tests/4-MATERIAIS/M_CENTRAL_ATIVO.robot"
# robot -v browser:firefox -t "SCRN4MMCENTRALATIVO-001:Fluxo Principal" -d ./5-results/SCRN4MMCENTRALATIVO-001 "3-tests/4-MATERIAIS/M_CENTRAL_ATIVO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCRN4MMCENTRALATIVO-001"
    Acessar a tela "Materiais e Logística>Patrimônio>Gerenciamento>Central do Ativo"@nprint @las
    Preencher o campo Tombamento Inicial|${dados}[tombamentoInicial]|, Tombamento Final|${dados}[tombamentoFinal]|
    Pesquisar Despesa operacional|${dados}[ambos]|
    Selecionar Produto
    Preencher o campo Data|${dados}[dtBaixa]|, motivo|${dados}[motivo]|
    Clicar no botao[dar baixa]
    Clicar no botao[sim]
    Clicar no botao[sim2]
    Clicar no botao[sim3]
    ContextoSteps.Valida Mensagem         ${msgRecebida}      ${dados}[msgEsperada]