#################################################################################################################################################################
# Autor: Marcos Costa
# Decrição: Registrar a entrada de um depósito de pagamento antecipado
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -t "SCR6CMCAUCAO001:Fluxo Principal" -d ./5-results/SRCMCAUCAO001 "3-tests/6-CONTROLADORIA/M_CAUCAO.robot"
# chrome:         robot -v browser:firefox -t "SCR6CMCAUCAO001:Fluxo Principal" -d ./5-results/SRCMCAUCAO001 "3-tests/6-CONTROLADORIA/M_CAUCAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -t "SCR6CMCAUCAO001:Fluxo Principal" -d ./5-results/SRCMCAUCAO001 "3-tests/6-CONTROLADORIA/M_CAUCAO.robot"
# chrome:         robot -v browser:headlessfirefox -t "SCR6CMCAUCAO001:Fluxo Principal" -d ./5-results/SRCMCAUCAO001 "3-tests/6-CONTROLADORIA/M_CAUCAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes

Resource            ../../1-resources/6-CONTROLADORIA/M_CAUCAO_STEPS.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
#Test Teardown     Encerra sessao


*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}          m_caucao
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
# SMF-9243 a SMF-9247
SCR6CMCAUCAO001:Fluxo Principal
    # robot -v browser:chrome -t "SCR6CMCAUCAO001:Fluxo Principal" -d ./5-results/SCR6CMCAUCAO001 "3-tests/6-CONTROLADORIA/M_CAUCAO.robot"
    # robot -v browser:firefox -t "SCR6CMCAUCAO001:Fluxo Principal" -d ./5-results/SCR6CMCAUCAO001 "3-tests/6-CONTROLADORIA/M_CAUCAO.robot"
    Acessar a tela "Controladoria>Caixa>Caixa>Manutenção Depósito Antecipado"@nprint @las
    Informe o Atendimento para o Recebimento Adiantado: Atendimento |100000234|
    Bloco Depósito Antecipado informe: Data Deposito|03/12/2021| Moeda |1| Valor Deposito |300|
    Bloco de Dados do Depósito Antecipado informe: Forma de Pagamento |Dinheiro|
    

