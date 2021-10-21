#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Tela de solicitação de Produtos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -t "SCR4M-002:Solicitacao de Produtos" -d ./5-results/SCR4M-002 "3-tests/4-MATERIAIS/M_BAIXA_SOL.robot"
# firefox: robot -v browser:firefox -t "SCR4M-002:Solicitacao de Produtos" -d ./5-results/SCR4M-002"3-tests/4-MATERIAIS/M_BAIXA_SOL.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR4M-002 "3-tests/4-MATERIAIS/M_BAIXA_SOL.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR4M-002 "3-tests/4-MATERIAIS/M_BAIXA_SOL.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/4-MATERIAIS/M_BAIXA_SOL_STEPS.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            screen_solicitacao_de_produtos
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4M-002:Solicitacao de Produtos
# robot -v browser:chrome -t "SCR4M-002:Solicitacao de Produtos" -d ./5-results/SCR4M-002 "3-tests/4-MATERIAIS/M_BAIXA_SOL.robot"
# robot -v browser:firefox -t "SCR4M-002:Solicitacao de Produtos" -d ./5-results/SCR4M-002"3-tests/4-MATERIAIS/M_BAIXA_SOL.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4M-002"
    Acessar a tela "Materiais e Logística>Almoxarifado>Solicitações>Atender"@nprint @las
    Preencher campo de Solicitação |${dados}[codSolicitacao]|
    Clicar no botão "Executar Consulta"@nprint
    Clicar no botao [1 - Visualizar os Produtos]||
    Clicar no botao [7 - Retornar]||
    Clicar no botao [2 - Confirmar Produtos]||

