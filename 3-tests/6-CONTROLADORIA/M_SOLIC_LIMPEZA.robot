#################################################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Este caso de teste tem como objetivo, Configurar as regras de alocação dentro dos Centros de Serviços Compartilhados
# permitindo      a medição do volume de atividades e/ou serviços compartilhados de centros de custos, que podem ser absorvidos em uma empresa da mesma organização
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -t "SCR6CMSOLICLIMPEZA-001:Configurar Centros de Serviço Compartilhados" -d ./5-results/SCR6CMSOLICLIMPEZA-001 "3-tests/6-CONTROLADORIA/M_SOLIC_LIMPEZA.robot"
# firefox:        robot -v browser:firefox -t "SCR6CMSOLICLIMPEZA-001:Configurar Centros de Serviço Compartilhados" -d ./5-results/SCR6CMSOLICLIMPEZA-001 "3-tests/6-CONTROLADORIA/M_SOLIC_LIMPEZA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/SCR6CMSOLICLIMPEZA-001 "3-tests/6-CONTROLADORIA/M_SOLIC_LIMPEZA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR6CMSOLICLIMPEZA-001 "3-tests/6-CONTROLADORIA/M_SOLIC_LIMPEZA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/6-CONTROLADORIA/M_SOLIC_LIMPEZA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessao
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_SOLIC_LIMPEZA
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6CMSOLICLIMPEZA-001:Configurar Centros de Serviço Compartilhados
# robot -v browser:chrome -t "SCR6CMSOLICLIMPEZA-001:Configurar Centros de Serviço Compartilhados" -d ./5-results/SCR6CMSOLICLIMPEZA-001 "3-tests/6-CONTROLADORIA/M_SOLIC_LIMPEZA.robot"
# robot -v browser:firefox -t "SCR6CMSOLICLIMPEZA-001:Configurar Centros de Serviço Compartilhados" -d ./5-results/SCR6CMSOLICLIMPEZA-001    "3-tests/6-CONTROLADORIA/M_SOLIC_LIMPEZA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6CMSOLICLIMPEZA-001 "
    Acessar a tela "Controladoria>Custos>Configurações>Centros de Serviços Compartilhados"@nprint @las
    Validar Acesso a Tela |${dados}[nomeTela]|
    Clicar no botao Adicionar
    Preencher Configuracoes |${dados}[vigencia]|, |${dados}[centroRegra]|, |${dados}[centroOrigem]|, |${dados}[empresaDestino]|, |${dados}[centroDestino]|, |${dados}[descConta]|
    Validar Campos |${dados}[vigencia]|, |${dados}[centroRegra]|, |${dados}[centroOrigem]|, |${dados}[empresaDestino]|, |${dados}[centroDestino]|, |${dados}[descConta]|
    Salvar e validar mensagem |${dados}[mensagemSucesso]|
