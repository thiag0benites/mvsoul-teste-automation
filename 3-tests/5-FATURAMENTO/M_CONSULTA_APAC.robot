#################################################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2 - ASSISTENCIAL\C_LISTAGEM_CONFERENCIA.robot"
# firefox:         robot -v browser:firefox -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2 - ASSISTENCIAL\C_LISTAGEM_CONFERENCIA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2 - ASSISTENCIAL\C_LISTAGEM_CONFERENCIA.robot"
# firefox:         robot -v browser:headlessfirefox -d ./5-results/C_LISTAGEM_CONFERENCIA_RPA_STEPS "3-tests\2 - ASSISTENCIAL\C_LISTAGEM_CONFERENCIA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes

Resource            ../../1-resources/5-FATURAMENTO/M_CONSULTA_APAC_STEPS.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao


*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}          fat_consultas_conta_paciente
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***

SCR5FMCONSULTAAPAC-001:Fluxo Principal          #SMF-10337 : Lançamento APAC 
# robot -v browser:chrome -t "SCR5FMCONSULTAAPAC-001:Fluxo Principal" -d ./5-results/SCR5FMCONSULTAAPAC-001 "3-tests/5-FATURAMENTO/M_CONSULTA_APAC.robot"
# robot -v browser:firefox -t "SCR5FMCONSULTAAPAC-001:Fluxo Principal" -d ./5-results/SCR5FMCONSULTAAPAC-001 "3-tests/5-FATURAMENTO/M_CONSULTA_APAC.robot"
    Acessar a tela "Materiais e Logística>Almoxarifado>Tabelas>Gerais>Estoques"@nprint @las
    Consultar Lista dos Processos a Serem Validados






