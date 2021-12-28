#################################################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_FICHA_INFECCAO-001 "3-tests\2-ASSISTENCIAL/SCR2AMPREVIEWLAUDOPSSD.robot"
# firefox:        robot -v browser:firefox -d ./5-results/M_FICHA_INFECCAO-001 "3-tests\2-ASSISTENCIAL/SCR2AMPREVIEWLAUDOPSSD.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2-ASSISTENCIAL/SCR2AMPREVIEWLAUDOPSSD.robot"
# firefox:        robot -v browser:headlessfirefox -d ./5-results/C_LISTAGEM_CONFERENCIA_RPA_STEPS "3-tests\2-ASSISTENCIAL/SCR2AMPREVIEWLAUDOPSSD.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/2-ASSISTENCIAL/M_PREVIEW_LAUDO_PSSD_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
 # Suite registrada no gerenciador de dados
${suite}          m_preview_laudo_pssd
 # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMPREVIEWLAUDOPSSD-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMPREVIEWLAUDOPSSD-001:Fluxo Principal" -d ./5-results/SCR2AMPREVIEWLAUDOPSSD-001 "3-tests/2-ASSISTENCIAL/M_PREVIEW_LAUDO_PSSD.robot"
# robot -v browser:firefox -t "SCR2AMPREVIEWLAUDOPSSD-001:Fluxo Principal" -d ./5-results/SCR2AMPREVIEWLAUDOPSSD-001 "3-tests/2-ASSISTENCIAL/M_PREVIEW_LAUDO_PSSD.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMPREVIEWLAUDOPSSD-001"
    #Acessar a tela "Diagnostico e Terapia>Laboratorio de Analises Clinicas>Atendimento>Gerenciamento de Exames"@nprint @nao
    Acessa a Tela Pela Busca |M_ADMIN_EXA_LAB||Gerenciamento de Exames| @las
    Gerenciamento de exames |${dados}[Pedido]||${dados}[Frame]|