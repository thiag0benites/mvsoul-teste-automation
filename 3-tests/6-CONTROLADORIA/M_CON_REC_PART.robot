#################################################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_CON_REC_PART_STEPS "3-tests\2 - ASSISTENCIAL\M_CON_REC_PART.robot"
# chrome:         robot -v browser:firefox -d ./5-results/M_CON_REC_PART_STEPS "3-tests\2 - ASSISTENCIAL\M_CON_REC_PART.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_CON_REC_PART_STEPS "3-tests\2 - ASSISTENCIAL\M_CON_REC_PART.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_CON_REC_PART_RPA_STEPS "3-tests\2 - ASSISTENCIAL\M_CON_REC_PART.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes

Resource            ../../1-resources/6-CONTROLADORIA/M_CON_REC_PART_STEPS.robot


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

SMF-6210 : Gerar a previsão de receita para compor o Contas a Receber previsto
# robot -v browser:chrome -t "SMF-6210 : Gerar a previsão de receita para compor o Contas a Receber previsto" -d ./5-results/SMF-6210 "3-tests/6-CONTROLADORIA/M_CON_REC_PART.robot"
# robot -v browser:firefox -t "SMF-6210 : Gerar a previsão de receita para compor o Contas a Receber previsto" -d ./5-results/SMF-6210 "3-tests/6-CONTROLADORIA/M_CON_REC_PART.robot"

    #Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar, Cta a Receber, Bancos)>Controle Financeiro>Manutenção de Recibo/Contas a Receber/bancos>Contas a Receber>Previsão>Geração de Contas a Receber"@nprint @las
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar, Cta a Receber, Bancos)>Controle Financeiro>Contas a Receber>Cadastro>Previsão>Geração de Contas a Receber"@nprint @las






