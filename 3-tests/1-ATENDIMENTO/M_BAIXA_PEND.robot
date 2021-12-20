#################################################################################################################################################################
# Autor: Marcos Costa
# Descrição: O Caso de Teste tem como Objetivo Configurar Lista de Paciente do Tipo Internação.
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -t "SCR2AMBAIXAPENDA001:Fluxo Principal" -d ./5-results/SCR2AMBAIXAPENDA001 "3-tests\1-ATENDIMENTO\M_BAIXA_PEND.robot"
# chrome:         robot -v browser:firefox -t "SCR2AMBAIXAPENDA001:Fluxo Principal" -d ./5-results/SCR2AMBAIXAPENDA001 "3-tests\1-ATENDIMENTO\M_BAIXA_PEND.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -t "SCR2AMBAIXAPENDA001:Fluxo Principal" -d ./5-results/SCR2AMBAIXAPENDA001 "3-tests\1-ATENDIMENTO\M_BAIXA_PEND.robot"
# chrome:         robot -v browser:headlessfirefox -t "SCR2AMBAIXAPENDA001:Fluxo Principal" -d ./5-results/SCR2AMBAIXAPENDA001 "3-tests\1-ATENDIMENTO\M_BAIXA_PEND.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/1-ATENDIMENTO/M_BAIXA_PEND_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
# Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}         m_baixa_pend
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
# 
SCR2AMBAIXAPENDA001:Fluxo Principal
    # robot -v browser:chrome -t "SCR2AMBAIXAPENDA001:Fluxo Principal" -d ./5-results/SCR2AMBAIXAPENDA001 "3-tests\1-ATENDIMENTO\M_BAIXA_PEND.robot"
    # robot -v browser:firefox -t "SCR2AMBAIXAPENDA001:Fluxo Principal" -d ./5-results/SCR2AMBAIXAPENDA001 "3-tests\1-ATENDIMENTO\M_BAIXA_PEND.robot"
    # ${dados}  Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMBAIXAPENDA001"
    Acessar a tela "Atendimento>Internação>Atendimento>Pendências do Atendimento>Baixa por Atendimento"@nprint @las
    Informa na Tela Pendencias por Atendimentos <Atendimento> |1000002364| <Paciente> |97| <OBS> |PACIENTE NA BAIXA!| <MSG> |Registros gravados com sucesso (1 registros gravados).|