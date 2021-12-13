#################################################################################################################################################################
# Autor: Fernando Lima
# Decrição: Teste da tela Consulta de Pedidos de Exame por Paciente
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_PEDI_PAC.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_PEDI_PAC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_PEDI_PAC.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_PEDI_PAC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/2-ASSISTENCIAL/C_PEDI_PAC_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
#Suite registrada no gerenciador de dados
${suite}          c_pedi_pac
#Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2ACPEDIPAC-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2ACPEDIPAC-001:Fluxo Principal" -d ./5-results/SCR2ACPEDIPAC-001 "3-tests/2-ASSISTENCIAL/C_PEDI_PAC.robot"
# robot -v browser:firefox -t "SCR2ACPEDIPAC-001:Fluxo Principal" -d ./5-results/SCR2AMESPERACOLETA0-001 "3-tests/2-ASSISTENCIAL/C_PEDI_PAC.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2ACPEDIPAC-001"
    Acessa a Tela Pela Busca |c_pedi_pac||Pedidos de Exame por Paciente| @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Numero Paciente |${dados}[EntradaDados]|
    Clicar Botao Executar
    Validar Elementos Tela |${dados}[NuAtend]| |${dados}[NuPedido]| |${dados}[DescrExame]| |${dados}[NomePaciente]| |${dados}[PresSolicitante]|