#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Confirmacao de Solicitacoes
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\MCONFIRMASOL.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\MCONFIRMASOL.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\MCONFIRMASOL.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\MCONFIRMASOL.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/M_CONFIRMA_SOL_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_CONFIRMA_SOL
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SMCONFIRMASOL-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SMCONFIRMASOL-001:Fluxo Principal" -d ./5-results/SCR8SMCONFIRMASOL-001 "3-tests/8-SERVICO_APOIO/M_CONFIRMA_SOL.robot"
# robot -v browser:firefox -t "SCR8SMCONFIRMASOL-001:Fluxo Principal" -d ./5-results/SCR8SMCONFIRMASOL-001 "3-tests/8-SERVICO_APOIO/M_CONFIRMA_SOL.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMCONFIRMASOL-001"
    Acessar a tela "Diagnostico e Terapia>Banco de Sangue>Atendimentos>Confirmação de Solicitações"@nprint @las
    Validar Acesso a Tela |Confirmação de Solicitações|
    Preencher Solicitacao |${dados}[Solicitacao]|
    Preencher Quantidade e Confirmar |${dados}[QtAtendida]|
    Valida Confirmacao