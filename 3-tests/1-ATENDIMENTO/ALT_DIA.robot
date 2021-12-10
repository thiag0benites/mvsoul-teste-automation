#################################################################################################################################################################
# Autor: Fernando Lima
# Decrição: Teste da tela Consulta de Consulta Alta Hospitalar do Dia
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\ALT_DIA.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\ALT_DIA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\ALT_DIA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\ALT_DIA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/ALT_DIA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          alt_dia
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AALTDIA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AALTDIA-001:Fluxo Principal" -d ./5-results/SCR1AALT_DIA "3-tests/1-ATENDIMENTO/ALT_DIA.robot"
# robot -v browser:firefox -t "SCR1AALTDIA-001:Fluxo Principal" -d ./5-results/SCR1AALT_DIA "3-tests/1-ATENDIMENTO/ALT_DIA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AALTDIA-001"
    Acessa a Tela Pela Busca |alt_dia||Altas do Dia| @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Campo Data |${dados}[DataAtendimento]|
    Click Botao Pesquisar
    Validar Dados Pos Pesquisa |${dados}[NomePac]| |${dados}[MotAlta]| |${dados}[HrAlta]||${dados}[Procedimento]|
    Sleep    5