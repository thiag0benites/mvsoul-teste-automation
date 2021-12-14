#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Cirurgia
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_CIRURGIA.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_CIRURGIA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_CIRURGIA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_CIRURGIA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/M_CIRURGIA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_CIRURGIA
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMCIRURGIA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMCIRURGIA-001:Fluxo Principal" -d ./5-results/SCR1AMCIRURGIA-001 "3-tests/1-ATENDIMENTO/M_CIRURGIA.robot"
# robot -v browser:firefox -t "SCR1AMCIRURGIA-001:Fluxo Principal" -d ./5-results/SCR1AMCIRURGIA-001 "3-tests/1-ATENDIMENTO/M_CIRURGIA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMCIRURGIA-001"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Tabelas>Cirurgia"@nprint @las
    Validar Acesso a Tela |Cirurgia|
    
    Preencher Descricao, Porte e Subgrupo |${dados}[Descricao]| |${dados}[Porte]| |${dados}[Subgrupo]|
    Preencher Procedimentos e via de Acesso |${dados}[Procedimento]| |${dados}[ProcedimentoSIH]| |${dados}[ProcedimentoSIA]| |${dados}[Via]|
    Preencher Orientacao e Preparo |${dados}[Orientacao]| |${dados}[Preparo]|
    Salvar e Validar |${dados}[MsgSalva]| 
