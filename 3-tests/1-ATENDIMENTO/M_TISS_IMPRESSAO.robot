#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_TISS_IMPRESSAO
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_TISS_IMPRESSAO "3-tests/1-ATENDIMENTO/M_TISS_IMPRESSAO.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_TISS_IMPRESSAO "3-tests/1-ATENDIMENTO/M_TISS_IMPRESSAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_TISS_IMPRESSAO "3-tests/1-ATENDIMENTO/M_TISS_IMPRESSAO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_TISS_IMPRESSAO "3-tests/1-ATENDIMENTO/M_TISS_IMPRESSAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/bd/BancoDados.robot
Resource            ../../1-resources/ContextoSteps.robot 
Resource            ../../1-resources/1-ATENDIMENTO/M_TISS_IMPRESSAO_STEPS.robot
Resource            ../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}           M_TISS_IMPRESSAO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SRC1AMTISSIMPRESSAOSMF-2046:Fluxo Principal
# robot -v browser:chrome -t "SRC1AMTISSIMPRESSAOSMF-2046:Fluxo Principal" -d ./5-results/M_TISS_IMPRESSAO_SMF_2046 "3-tests/1-ATENDIMENTO/M_TISS_IMPRESSAO.robot"
# robot -v browser:firefox -t "SRC1AMTISSIMPRESSAOSMF-2046:Fluxo Principal" -d ./5-results/M_TISS_IMPRESSAO_SMF_2046 "3-tests/1-ATENDIMENTO/M_TISS_IMPRESSAO.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SRC1AMTISSIMPRESSAOSMF-2046"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Conta Ambulatorial>Conta do Atendimento"@nprint @las
    Informar o código do atendimento 
    Clicar no botão Executar 
    Validar Resultado da Pesquisa do atendimento
    Clicar no botão Rel. G. TISS 
    Selecionar na saída do relatorio a opcao tela
    Clicar no botão Imprimir 

SRC1AMTISSIMPRESSAOSMF-4079:Fluxo Principal
# robot -v browser:chrome -t "SRC1AMTISSIMPRESSAOSMF-4079:Fluxo Principal" -d ./5-results/M_TISS_IMPRESSAO_SMF_4079 "3-tests/1-ATENDIMENTO/M_TISS_IMPRESSAO.robot"
# robot -v browser:firefox -t "SRC1AMTISSIMPRESSAOSMF-4079:Fluxo Principal" -d ./5-results/M_TISS_IMPRESSAO_SMF_4079 "3-tests/1-ATENDIMENTO/M_TISS_IMPRESSAO.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SRC1AMTISSIMPRESSAOSMF-4079"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Conta Ambulatorial>Conta do Atendimento"@nprint @las
    Informar o código do atendimento 
    Clicar no botão Executar 
    Validar Resultado da Pesquisa do atendimento
    Clicar no botão Rel. G. TISS 
    Selecionar na saída do relatorio a opcao Impressora
    Clicar no botão Imprimir 


