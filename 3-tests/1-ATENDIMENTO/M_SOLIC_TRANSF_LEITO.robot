#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Solicitação de Transferencia de Leito
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_SOLIC_TRANSF_LEITO.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_SOLIC_TRANSF_LEITO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_SOLIC_TRANSF_LEITO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_SOLIC_TRANSF_LEITO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/M_SOLIC_TRANSF_LEITO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_SOLIC_TRANSF_LEITO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMSOLICTRANSFLEITO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMSOLICTRANSFLEITO-001:Fluxo Principal" -d ./5-results/SCR1AMSOLICTRANSFLEITO-001 "3-tests/1-ATENDIMENTO/M_SOLIC_TRANSF_LEITO.robot"
# robot -v browser:firefox -t "SCR1AMSOLICTRANSFLEITO-001:Fluxo Principal" -d ./5-results/SCR1AMSOLICTRANSFLEITO-001 "3-tests/1-ATENDIMENTO/M_SOLIC_TRANSF_LEITO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMSOLICTRANSFLEITO-001"
    Acessa a Tela Pela Busca |M_MON_SOLIC_TRANSF||Solicitação de Transferência| @las
    Incluir Nova Solicitacao Apontando a Tela do Teste
    Validar Acesso a Tela |Solicitação de Transferência de Paciente|

    Preencher Atendimento, Acomodacao e Motivo |${dados}[Atendimento]| |${dados}[Acomodacao]| |${dados}[Motivo]|
    Confirmar e Validar |${dados}[MsgSalva]|

