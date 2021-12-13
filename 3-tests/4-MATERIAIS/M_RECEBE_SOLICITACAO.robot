#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_RECEBE_SOLICITACAO
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_RECEBE_SOLICITACAO "3-tests/4-MATERIAIS/M_RECEBE_SOLICITACAO.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_RECEBE_SOLICITACAO "3-tests/4-MATERIAIS/M_RECEBE_SOLICITACAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_RECEBE_SOLICITACAO "3-tests/4-MATERIAIS/M_RECEBE_SOLICITACAO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_RECEBE_SOLICITACAO "3-tests/4-MATERIAIS/M_RECEBE_SOLICITACAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/M_RECEBE_SOLICITACAO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_RECEBE_SOLICITACAO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMRECEBESOLICITACAO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MMRECEBESOLICITACAO-001:Fluxo Principal" -d ./5-results/SCR4MMRECEBESOLICITACAO "3-tests/4-MATERIAIS/M_RECEBE_SOLICITACAO.robot"
# robot -v browser:firefox -t "SCR4MMRECEBESOLICITACAO-001:Fluxo Principal" -d ./5-results/SCR4MMRECEBESOLICITACAO "3-tests/4-MATERIAIS/M_RECEBE_SOLICITACAO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMRECEBESOLICITACAO-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Solicitações>Recebimento de Solicitação"@nprint @las
    Minimizar notificacao
    Informar o codigo Solicitacao e Usuario responsavel pela entrega |${dados}[usuarioRespReceb]|
    Clicar no botao Executar
    Clicar no proximo registro
    Marcar o checkbox confirmar
    Clicar no botao Confirmar
    Validar mensagem de confirmacao |${dados}[mensagem]|
    Clicar no botao OK