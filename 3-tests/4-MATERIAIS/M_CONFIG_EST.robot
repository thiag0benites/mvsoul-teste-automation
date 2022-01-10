#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Produtos do Estoque
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_CONFIG_EST "3-tests\4-MATERIAIS\M_CONFIG_EST.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_CONFIG_EST "3-tests\4-MATERIAIS\M_CONFIG_EST.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_CONFIG_EST.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_CONFIG_EST.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/M_CONFIG_EST_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}        m_config_est
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMCONFIGEST-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MMCONFIGEST-001:Fluxo Principal" -d ./5-results/SCR4MMCONFIGEST-001 "3-tests/4-MATERIAIS/M_CONFIG_EST.robot"
# robot -v browser:firefox -t "SCR4MMCONFIGEST-001:Fluxo Principal" -d ./5-results/SCR4MMCONFIGEST-001 "3-tests/4-MATERIAIS/M_CONFIG_EST.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMCONFIGEST-001"
    #Acessar a tela "Materiais e Logística>Almoxarifado>Configurações>Funcionamento"@nprint @las
    Acessar a tela pela busca |M_CONFIG_EST||Funcionamento|@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Alterar Parametro de Situacao do Usuario |${dados}[Parametro1]| |${dados}[Parametro2]|
    Acessar Opcao de Configuracao |Parâmetros de Movimentação de Produtos| |${dados}[Parametro1]| |${dados}[Parametro2]|
    Acessar Opcao de Configuracao |Configuração de Kit| |${dados}[Parametro1]| |${dados}[Parametro2]|
    Salvar Alteracoes Realizadas |${dados}[MensagemSucesso]|
    # Retornar massa de dados ao status inicial do teste
    Alterar Parametro de Situacao do Usuario |${dados}[Parametro1]| |${dados}[Parametro2]|
    Salvar Alteracoes Realizadas |${dados}[MensagemSucesso]|
