#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela M_USUARIO
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_USUARIO "3-tests/7-APOIO_TI/M_USUARIO.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_USUARIO "3-tests/7-APOIO_TI/M_USUARIO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_USUARIO "3-tests/7-APOIO_TI/M_USUARIO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_USUARIO "3-tests/7-APOIO_TI/M_USUARIO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/7-APOIO_TI/M_USUARIO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_usuario
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-6586:Fluxo Principal
# robot -v browser:chrome -t "SMF-6586:Fluxo Principal" -d ./5-results/SMF-6586 "3-tests/7-APOIO_TI/M_USUARIO.robot"
# robot -v browser:firefox -t "SMF-6586:Fluxo Principal" -d ./5-results/SMF-6586 "3-tests/7-APOIO_TI/M_USUARIO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-6586"
    Acessar a tela "Apoio a TI>Gestão de Usuários>Autorização>Usuários"@nprint @las
    Preencher os campos Identificacao|${dados}[identificacao]|, Nome Completo|${dados}[nomeCompleto]|, Email|${dados}[email]|, DDD|${dados}[ddd]|, Celular|${dados}[celular]|, Matricula|${dados}[matricula]|, Cracha|${dados}[cracha]|, Data Nascimento|${dados}[dtNasc]|, Observaca|${dados}[observacao]|, |${suite}|${dados}[id]|
    Selecionar Profissao|${dados}[profissao]|
    Selecionar Papel principal|${dados}[papel]|
    Clicar no botao[Reconciliar]
    Clicar no botao[OK]
