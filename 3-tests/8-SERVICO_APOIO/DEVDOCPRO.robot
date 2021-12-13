#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela DEVDOCPRO
#################################################################################################################################################################
# Execução Exemplo:
<<<<<<< HEAD:3-tests/8-SERVICOS_DE_APOIO/DEVDOCPRO.robot
# chrome:  robot -v browser:chrome -d ./5-results/DEVDOCPRO "3-tests/8-SERVICOS_DE_APOIO/DEVDOCPRO.robot"
# firefox: robot -v browser:firefox -d ./5-results/DEVDOCPRO "3-tests/8-SERVICOS_DE_APOIO/DEVDOCPRO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/DEVDOCPRO "3-tests/8-SERVICOS_DE_APOIO/DEVDOCPRO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/DEVDOCPRO "3-tests/8-SERVICOS_DE_APOIO/DEVDOCPRO.robot"
=======
# chrome:         robot -v browser:chrome -d ./5-results/M_REGRA "3-tests/8-SERVICO_DE_APOIO/DEVDOCPRO.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_REGRA "3-tests/8-SERVICO_DE_APOIO/DEVDOCPRO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_REGRA "3-tests/8-SERVICO_DE_APOIO/DEVDOCPRO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_REGRA "3-tests/8-SERVICO_DE_APOIO/DEVDOCPRO.robot"
>>>>>>> 16e2f22f5f6ea226cade8073071e899960c0be11:3-tests/8-SERVICO_APOIO/DEVDOCPRO.robot
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource          ../../1-resources/8-SERVICO_APOIO/DEVDOCPRO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          DEVDOCPRO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SDEVDOCPRO-001:Fluxo Principal
<<<<<<< HEAD:3-tests/8-SERVICOS_DE_APOIO/DEVDOCPRO.robot
# robot -v browser:chrome -t "SCR8SDEVDOCPRO-001:Fluxo Principal" -d ./5-results/SCR8SDEVDOCPRO-001 "3-tests/8-SERVICOS_DE_APOIO/DEVDOCPRO.robot"
# robot -v browser:firefox -t "SCR8SDEVDOCPRO-001:Fluxo Principal" -d ./5-results/SCR8SDEVDOCPRO-001 "3-tests/8-SERVICOS_DE_APOIO/DEVDOCPRO.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SDEVDOCPRO-001"
=======
# robot -v browser:chrome -t "SCR8SDEVDOCPRO-001:Fluxo Principal" -d ./5-results/SCR8SDEVDOCPRO-001 "3-tests/8-SERVICO_DE_APOIO/DEVDOCPRO.robot"
# robot -v browser:firefox -t "SCR8SDEVDOCPRO-001:Fluxo Principal" -d ./5-results/SCR8SDEVDOCPRO-001 "3-tests/8-SERVICO_DE_APOIO/DEVDOCPRO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SDEVDOCPRO-001"
>>>>>>> 16e2f22f5f6ea226cade8073071e899960c0be11:3-tests/8-SERVICO_APOIO/DEVDOCPRO.robot
    Acessar a tela "Serviços de Apoio>Serviço Arquivo Médico>SAME>Recebimento de Documentos>Confirmação de Recebimento"@nprint @las
    Selecionar Same Geral
    Clicar no botao [Pesquisar]
    Informar o Protocolo |${dados}[protocolo]|
    Clicar no botao [Salvar]
    Selecionar impressao Tela
    Clicar no botao [Imprimir]
    Valida aba do browser
