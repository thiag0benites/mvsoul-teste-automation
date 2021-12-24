#################################################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_FICHA_INFECCAO-001 "3-tests\2-ASSISTENCIAL/SCR2AMLAUEXA.robot"
# firefox:        robot -v browser:firefox -d ./5-results/M_FICHA_INFECCAO-001 "3-tests\2-ASSISTENCIAL/SCR2AMLAUEXA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2-ASSISTENCIAL/SCR2AMLAUEXA.robot"
# firefox:        robot -v browser:headlessfirefox -d ./5-results/C_LISTAGEM_CONFERENCIA_RPA_STEPS "3-tests\2-ASSISTENCIAL/SCR2AMLAUEXA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/2-ASSISTENCIAL/M_LAU_EXA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
 # Suite registrada no gerenciador de dados
${suite}          m_lau_exa
 # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMLAUEXA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMLAUEXA-001:Fluxo Principal" -d ./5-results/SCR2AMLAUEXA-001 "3-tests/2-ASSISTENCIAL/M_LAU_EXA.robot"
# robot -v browser:firefox -t "SCR2AMLAUEXA-001:Fluxo Principal" -d ./5-results/SCR2AMLAUEXA-001 "3-tests/2-ASSISTENCIAL/M_LAU_EXA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMLAUEXA-001"
    Acessar a tela "Diagnostico e Terapia>Diagnóstico por Imagem>Atendimentos>Laudos"@nprint @nao
    Laudos dos exames |${dados}[Data]||${dados}[ComboBox]||${dados}[Tecnico]||${dados}[Medico]||${dados}[Medico1]||${dados}[MensagemEsperada]|
