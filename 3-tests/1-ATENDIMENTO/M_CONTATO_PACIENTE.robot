#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_CONFIG_USU_MAQUINA
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_CONTATO_PACIENTE "3-tests/1-ATENDIMENTO/M_CONTATO_PACIENTE.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_CONTATO_PACIENTE "3-tests/1-ATENDIMENTO/M_CONTATO_PACIENTE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_CONTATO_PACIENTE "3-tests/1-ATENDIMENTO/M_CONTATO_PACIENTE.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_CONTATO_PACIENTE "3-tests/1-ATENDIMENTO/M_CONTATO_PACIENTE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/M_CONTATO_PACIENTE_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_CONTATO_PACIENTE
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SRC1AMCONTATOPACIENTE-001:Fluxo principal
# robot -v browser:chrome -t "SRC1AMCONTATOPACIENTE-001:Fluxo principal" -d ./5-results/M_CONTATO_PACIENTE "3-tests/1-ATENDIMENTO/M_CONTATO_PACIENTE.robot"
# robot -v browser:firefox -t "SRC1AMCONTATOPACIENTE-001:Fluxo principal" -d ./5-results/M_CONTATO_PACIENTE "3-tests/1-ATENDIMENTO/M_CONTATO_PACIENTE.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SRC1AMCONTATOPACIENTE-001"
    Acessar a tela "Atendimento>Urgência e Emergência>Atendimento>Cadastro Paciente"@nprint @las
    Clicar no botao Pesquisar
    Clicar no botao Executar
    Clicar no botao Sim no modal de notificacao
    Clicar no botao Contato
    Clicar no botao Adicionar
    Preencher os dados do contato do paciente |${dados}[ddd1]|,|${dados}[ddd2]|,|${dados}[telefone]|
    Clicar no botao Salvar
    Validar cadastro do contato do paciente |${dados}[mensagem]|
