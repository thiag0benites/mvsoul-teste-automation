#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Teste da tela Triagem de Paciente
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_TROCPAC.robot"
# firefox:        robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_TROCPAC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_TROCPAC.robot"
# firefox:        robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_TROCPAC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/M_TROCPAC_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}        m_trocpac
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1MTROCPAC-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1MTROCPAC-001:Fluxo Principal" -d ./5-results/SCR1MTROCPAC-001 "3-tests/1-ATENDIMENTO/M_TROCPAC.robot"
# robot -v browser:firefox -t "SCR1MTROCPAC-001:Fluxo Principal" -d ./5-results/SCR1MTROCPAC-001 "3-tests/1-ATENDIMENTO/M_TROCPAC.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1MTROCPAC-001"
    Acessar a tela "Atendimento>Internação Domiciliar (Home Care)>Tabelas>Transferência de Dados de Paciente"@print @las
    Preencher Paciente de Origem|${dados}[PacienteOrigem]|, Destino|${dados}[PacienteDestino]| e Validar Informacoes |${dados}[MsgUsuConf]|, |${dados}[MsgExcPac]|, |${dados}[MsgConTrans]|