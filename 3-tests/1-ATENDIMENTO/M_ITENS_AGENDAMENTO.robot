#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Itens de Agendamento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_ITENS_AGENDAMENTO.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_ITENS_AGENDAMENTO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_ITENS_AGENDAMENTO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_ITENS_AGENDAMENTO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/M_ITENS_AGENDAMENTO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_ITENS_AGENDAMENTO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMITENSAGENDAMENTO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMITENSAGENDAMENTO-001:Fluxo Principal" -d ./5-results/SCR1AMITENSAGENDAMENTO-001 "3-tests/1-ATENDIMENTO/M_ITENS_AGENDAMENTO.robot"
# robot -v browser:firefox -t "SCR1AMITENSAGENDAMENTO-001:Fluxo Principal" -d ./5-results/SCR1AMITENSAGENDAMENTO-001 "3-tests/1-ATENDIMENTO/M_ITENS_AGENDAMENTO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMITENSAGENDAMENTO-001"
    Acessar a tela "Atendimento>Central de Agendamento>Tabelas>Itens de Agendamento"@nprint @las
    Validar Acesso a Tela |Cadastro de Itens de Agendamento|
    Preencher Informacoes do Item |${dados}[Descricao]| |${dados}[Mnemonico]| |${dados}[Exame]| |${dados}[Tempo]| |${dados}[Obs]|
    Preencher Recurso |${dados}[Recurso]|
    Preencher Prestador |${dados}[Prestador]|
    Preencher Equipamento |${dados}[Equipamento]|
    Preencher Item |${dados}[Item]|
    Clicar Botao Salvar |${dados}[MsgSalva]|