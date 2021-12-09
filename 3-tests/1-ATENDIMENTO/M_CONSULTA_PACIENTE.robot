#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição:  Validar Cadastro de Agendas
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -t "SCR1TM_CONSULTA_PACIENTE-001:Cadastro de Agendas" -d ./5-results/SCR1TM_CONSULTA_PACIENTE-001 "3-tests/1-ATENDIMENTO/M_NOTA_FISCAL_CONV.robot"
# firefox: robot -v browser:firefox -t "SCR1TM_CONSULTA_PACIENTE-001:Cadastro de Agendas" -d ./5-results/SCR1TM_CONSULTA_PACIENTE-001"3-tests/1-ATENDIMENTO/M_NOTA_FISCAL_CONV.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR1TM_CONSULTA_PACIENTE-001 "3-tests/1-ATENDIMENTO/M_NOTA_FISCAL_CONV.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR1TM_CONSULTA_PACIENTE-001 "3-tests/1-ATENDIMENTO/M_NOTA_FISCAL_CONV.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/M_CONSULTA_PACIENTE_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            m_consulta_paciente
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1TM_CONSULTA_PACIENTE-001:Cadastro de Agendas
# robot -v browser:chrome -t "SCR1TM_CONSULTA_PACIENTE-001:Cadastro de Agendas" -d ./5-results/SCR1TM_CONSULTA_PACIENTE-001 "3-tests/1-ATENDIMENTO/M_CONSULTA_PACIENTE.robot"
# robot -v browser:firefox -t "SCR1TM_CONSULTA_PACIENTE-001:Cadastro de Agendas" -d ./5-results/SCR1TM_CONSULTA_PACIENTE-001 "3-tests/1-ATENDIMENTO/M_CONSULTA_PACIENTE.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1TM_CONSULTA_PACIENTE-001"
    Acessar a tela "Atendimento>Central de Agendamento>Tabelas>Cadastro de Agendas"@nprint @las
    Clicar no botao "Procurar"@nprint
    Clicar no botao "Executar Consulta"@nprint
    Validar Informacao Prestador |${dados}[validarPrestador]|  