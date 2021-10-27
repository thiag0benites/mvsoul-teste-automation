#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição:  Validar Cadastro de Agendas
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -t "SCR4M-001:M_NOTA_FISCAL_CONV" -d ./5-results/SCR4M-002 "3-tests/1-ATENDIMENTO/M_NOTA_FISCAL_CONV.robot"
# firefox: robot -v browser:firefox -t "SCR4M-002:M_NOTA_FISCAL_CONV" -d ./5-results/SCR4M-002"3-tests/1-ATENDIMENTO/M_NOTA_FISCAL_CONV.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR4M-002 "3-tests/1-ATENDIMENTO/M_NOTA_FISCAL_CONV.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR4M-002 "3-tests/1-ATENDIMENTO/M_NOTA_FISCAL_CONV.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/1-ATENDIMENTO/M_CONSULTA_PACIENTE_STEPS.robot
Resource            ../../1-resources/auxiliar/Genericos.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_CONSULTA_PACIENTE
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MM_CONSULTA_PACIENTE-001:Cadastro de Agendas
# robot -v browser:chrome -t "SCR4MM_CONSULTA_PACIENTE-001:Cadastro de Agendas" -d ./5-results/SCR4MM_CONSULTA_PACIENTE-001 "3-tests/1-ATENDIMENTO/M_CONSULTA_PACIENTE.robot"
# robot -v browser:firefox -t "SCR4MM_CONSULTA_PACIENTE-001:Cadastro de Agendas" -d ./5-results/SCR4MM_CONSULTA_PACIENTE-001 "3-tests/1-ATENDIMENTO/M_CONSULTA_PACIENTE.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MM_CONSULTA_PACIENTE-001"
    Acessar a tela "Atendimento>Central de Agendamento>Tabelas>Cadastro de Agendas"@nprint @las
    Clicar no botão "Procurar"@nprint
    Clicar no botão "Executar Consulta"@nprint
    

