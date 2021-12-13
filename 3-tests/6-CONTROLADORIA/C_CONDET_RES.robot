#################################################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:    robot -v browser:chrome -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2 - ASSISTENCIAL\C_LISTAGEM_CONFERENCIA.robot"
# firefox:   robot -v browser:firefox -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2 - ASSISTENCIAL\C_LISTAGEM_CONFERENCIA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:    robot -v browser:headlesschrome -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2 - ASSISTENCIAL\C_LISTAGEM_CONFERENCIA.robot"
# firefox:   robot -v browser:headlessfirefox -d ./5-results/C_LISTAGEM_CONFERENCIA_RPA_STEPS "3-tests\2 - ASSISTENCIAL\C_LISTAGEM_CONFERENCIA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/6-CONTROLADORIA/C_CONDET_RES_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
 # Suite registrada no gerenciador de dados
${suite}          c_condet_res
 # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6CCCONDETRES-001:Fluxo Principal           
# robot -v browser:chrome -t "SCR6CCCONDETRES-001:Fluxo Principal" -d ./5-results/SCR6CCCONDETRES-001 "3-tests/6-CONTROLADORIA/C_CONDET_RES.robot"
# robot -v browser:firefox -t "SCR6CCCONDETRES-001:Fluxo Principal" -d ./5-results/SCR6CCCONDETRES-001 "3-tests/6-CONTROLADORIA/C_CONDET_RES.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6CCCONDETRES"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Fiscal>Consultas>Retenção de Impostos"@nprint @las
    Descrição do Documento |${dados}[Codigo]||${dados}[Titulo]|