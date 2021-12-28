#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Consulta das Prescrições Médicas/Enfermagem
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_PREMED.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_PREMED.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_PREMED.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_PREMED.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/2-ASSISTENCIAL/C_PREMED_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          c_premed
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2ACPREMED-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2ACPREMED-001:Fluxo Principal" -d ./5-results/SCR2ACPREMED-001 "3-tests/2-ASSISTENCIAL/C_PREMED.robot"
# robot -v browser:firefox -t "SCR2ACPREMED-001:Fluxo Principal" -d ./5-results/SCR2ACPREMED-001 "3-tests/2-ASSISTENCIAL/C_PREMED.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2ACPREMED-001"
    Acessa a Tela Pela Busca |C_PREMED||Prescritas| @las
    #Acessar a tela "Clínica e Assistencial>Gerenciamento de Unidades>Consultas>Prescrições Médicas>Prescritas"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Consulta Prescricoes Medicas |${dados}[Paciente]|
    Validar Consulta Realizada |${dados}[Medico]| |${dados}[UnidInternacao]| |${dados}[Data]| |${dados}[Tipo]| |${dados}[Esquema]| |${dados}[ItemPrescricao]|
