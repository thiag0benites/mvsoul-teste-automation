#################################################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/SCR5FMGLOSAS-001 "3-tests\5 - FATURAMENTO\M_GLOSAS.robot"
# firefox:        robot -v browser:firefox -d ./5-results/SCR5FMGLOSAS-001 "3-tests\5 - FATURAMENTO\M_GLOSAS.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/SCR5FMGLOSAS-001 "3-tests\5 - FATURAMENTO\M_GLOSAS.robot"
# firefox:        robot -v browser:headlessfirefox -d ./5-results/SCR5FMGLOSAS-001 "3-tests\5 - FATURAMENTO\M_GLOSAS.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/2-ASSISTENCIAL/M_LAU_EXA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
 # Suite registrada no gerenciador de dados
${suite}         m_rastrear_amostra
 # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMLAUEXA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMLAUEXA-001:Fluxo Principal" -d ./5-results/SCR2AMLAUEXA-001 "3-tests/2-ASSISTENCIAL/M_LAU_EXA.robot"
# robot -v browser:firefox -t "SCR2AMLAUEXA-001:Fluxo Principal" -d ./5-results/SCR2AMLAUEXA-001 "3-tests/2-ASSISTENCIAL/M_LAU_EXA.robot"
    #${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMLAUEXA-001"
    Acessar a tela "Diagnostico e Terapia>Diagnóstico por Imagem>Atendimentos>Laudos"@nprint @nao
    


