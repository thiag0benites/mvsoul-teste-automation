#################################################################################################################################################################
# Autor: Fernando Lima
# Decrição: Testes da tela Consulta de atendimento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/CONS_ATE "3-tests/1-ATENDIMENTO/CONS_ATE.robot"
# firefox: robot -v browser:firefox -d ./5-results/CONS_ATE "3-tests/1-ATENDIMENTO/CONS_ATE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/CONS_ATE "3-tests/1-ATENDIMENTO/CONS_ATE.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/CONS_ATE "3-tests/1-ATENDIMENTO/CONS_ATE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/CONS_ATE_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao   
Test Teardown       Encerra sessao    


*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            cons_ate
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1ACONSATE-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1ACONSATE-001:Fluxo Principal" -d ./5-results/SCR1ACONSATE-001 "3-tests/1-ATENDIMENTO/CONS_ATE.robot"
# robot -v browser:firefox -t "SCR1ACONSATE-001:Fluxo Principal" -d ./5-results/SCR1ACONSATE-001 "3-tests/1-ATENDIMENTO/CONS_ATE.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SRC1ACONSATE-001"
    Acessa a Tela Pela Busca |cons_ate||Consulta de ATENDIMENTO| @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Clicar Botao Pesquisar e Insere dados   
    Validar Dados Pesquisa Atendimento |${dados}[PacNumero]| |${dados}[PacNome]| |${dados}[PacNas]| |${dados}[PacMae]| |${dados}[NumAtende]| |${dados}[Localizacao]|
