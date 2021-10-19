#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/O_TRANSF_CC_RPA_STEPS "3-tests\2 - ASSISTENCIAL\O_TRANSF_CC_RPA.robot"
# chrome:         robot -v browser:firefox -d ./5-results/O_TRANSF_CC_RPA_STEPS "3-tests\2 - ASSISTENCIAL\O_TRANSF_CC_RPA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/O_TRANSF_CC_RPA_STEPS "3-tests\2 - ASSISTENCIAL\O_TRANSF_CC_RPA.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/O_TRANSF_CC_RPA_STEPS "3-tests\2 - ASSISTENCIAL\O_TRANSF_CC_RPA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources//2-ASSISTENCIAL/O_TRANSF_CC_RPA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
# Test Teardown     Encerra sessao


*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}          fat_consultas_conta_paciente
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
SCR1AOTRAN-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AOTRAN-001:Fluxo Principal" -d ./5-results/SCR1AOTRAN-001 "3-tests\2-ASSISTENCIAL/O_TRANSF_CC_RPA.robot"
# robot -v browser:firefox -t "SCR1AOTRAN-001:Fluxo Principal" -d ./5-results/SCR1AOTRAN-001 "3-tests\ 2-ASSISTENCIAL/O_TRANSF_CC_RPA.robot"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Transferência de Paciente>Transferência para Centro Cirúrgico"@nprint @las
    Acessar Cadastro |1000000198|
    Acesso Campo |Codigo Aviso|

