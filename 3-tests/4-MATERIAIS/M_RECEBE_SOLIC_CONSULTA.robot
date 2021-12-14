#################################################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2 - ASSISTENCIAL\C_LISTAGEM_CONFERENCIA.robot"
# firefox:        robot -v browser:firefox -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2 - ASSISTENCIAL\C_LISTAGEM_CONFERENCIA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2 - ASSISTENCIAL\C_LISTAGEM_CONFERENCIA.robot"
# firefox:        robot -v browser:headlessfirefox -d ./5-results/C_LISTAGEM_CONFERENCIA_RPA_STEPS "3-tests\2 - ASSISTENCIAL\C_LISTAGEM_CONFERENCIA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/4-MATERIAIS/M_RECEBE_SOLIC_CONSULTA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
 # Suite registrada no gerenciador de dados
${suite}          m_recebe_solic_consulta
 # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMECEBESOLICCONSULTA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MMECEBESOLICCONSULTA-001:Fluxo Principal" -d ./5-results/SCR4MMECEBESOLICCONSULTA-001 "3-tests/4-MATERIAIS/M_RECEBE_SOLIC_CONSULTA.robot"
# robot -v browser:firefox -t "SCR4MMECEBESOLICCONSULTA-001:Fluxo Principal" -d ./5-results/SCR4MMECEBESOLICCONSULTA-001 "3-tests/4-MATERIAIS/M_RECEBE_SOLIC_CONSULTA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMECEBESOLICCONSULTA-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Personalizados>Consulta de Recebimento de Solicitação"@nprint @las
    Consultar Lista dos Processos a Serem Validados|${dados}[MsgEsperada]|