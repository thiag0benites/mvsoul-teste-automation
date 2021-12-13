#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_USUEST
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_USUEST "3-tests/4-MATERIAIS/M_USUEST.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_USUEST "3-tests/4-MATERIAIS/M_USUEST.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_USUEST "3-tests/4-MATERIAIS/M_USUEST.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_USUEST "3-tests/4-MATERIAIS/M_USUEST.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/M_USUEST_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_USUEST
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMUSUEST-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MMUSUEST-001:Fluxo Principal" -d ./5-results/M_USUEST "3-tests/4-MATERIAIS/M_USUEST.robot"
# robot -v browser:firefox -t "SCR4MMUSUEST-001:Fluxo Principal" -d ./5-results/M_USUEST "3-tests/4-MATERIAIS/M_USUEST.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMUSUEST-001"
    Acessar a tela "Apoio a TI>Gestão de Usuários>Configurações de Acesso>Acessos Suprimentos>Usuário por Estoque"@nprint @las
    Preencher os campos da tela |${dados}[usuario]|,|${dados}[estoque]|
    Marcar os checkbox
    Clicar no botao e salvar cadastro
    Validar o cadastro realizado |${dados}[mensagem]|