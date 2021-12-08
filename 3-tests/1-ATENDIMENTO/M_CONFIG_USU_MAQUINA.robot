#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_CONFIG_USU_MAQUINA
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_CONFIG_USU_MAQUINA "3-tests/1-ATENDIMENTO/M_CONFIG_USU_MAQUINA.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_CONFIG_USU_MAQUINA "3-tests/1-ATENDIMENTO/M_CONFIG_USU_MAQUINA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_CONFIG_USU_MAQUINA "3-tests/1-ATENDIMENTO/M_CONFIG_USU_MAQUINA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_CONFIG_USU_MAQUINA "3-tests/1-ATENDIMENTO/M_CONFIG_USU_MAQUINA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/M_CONFIG_USU_MAQUINA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_CONFIG_USU_MAQUINA
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SRC1AMCONFIGUSUMAQUINA-001:Fluxo principal
# robot -v browser:chrome -t "SRC1AMCONFIGUSUMAQUINA-001:Fluxo principal" -d ./5-results/M_CONFIG_USU_MAQUINA "3-tests/1-ATENDIMENTO/M_CONFIG_USU_MAQUINA.robot"
# robot -v browser:firefox -t "SRC1AMCONFIGUSUMAQUINA-001:Fluxo principal" -d ./5-results/M_CONFIG_USU_MAQUINA "3-tests/1-ATENDIMENTO/M_CONFIG_USU_MAQUINA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SRC1AMCONFIGUSUMAQUINA-001"
    Acessar a tela "Atendimento>Urgência e Emergência>Atendimento>Configurações>Configurações Usuário/Maquina para o Atendimento"@nprint @las
    Clicar na aba Relatorios
    Clicar no botao Adicionar
    Preencher codigo e descricao |${dados}[codigo]|,|${dados}[descricao]|
    Clicar no botao Salvar
    Validar configuracao cadastrada |${dados}[mensagem]|