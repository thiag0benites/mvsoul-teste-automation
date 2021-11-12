#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Usuários por Origem
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_USUORI.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_USUORI.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_USUORI.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_USUORI.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_USUORI_STEPS.robot
Resource            ../../1-resources/2-ASSISTENCIAL/M_USUUNID_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_usuori
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMUSUORI-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMUSUORI-001:Fluxo Principal" -d ./5-results/SCR2AMUSUORI-001 "3-tests/2-ASSISTENCIAL/M_USUORI.robot"
# robot -v browser:firefox -t "SCR2AMUSUORI-001:Fluxo Principal" -d ./5-results/SCR2AMUSUORI-001 "3-tests/2-ASSISTENCIAL/M_USUORI.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMUSUORI-001"
    Acessar a tela "Apoio a TI>Gestão de Usuários>Configurações de Acesso>Acessos Gerais>Usuários por Origem"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Selecionar Usuario |${dados}[CdUsuario]| |${dados}[NomeUsuario]|
    Selecionar Origem |${dados}[Origem]|
    Clicar Botao Salvar
    # Retornar massa de dados ao status inicial do teste
    Excluir Origem |${dados}[Origem]|

