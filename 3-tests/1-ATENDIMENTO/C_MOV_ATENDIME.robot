#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Consulta de Atendimento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_MOV_ATENDIME.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_MOV_ATENDIME.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_MOV_ATENDIME.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_MOV_ATENDIME.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/C_MOV_ATENDIME_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            C_MOV_ATENDIME
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1ACMOVATENDIME-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1ACMOVATENDIME-001:Fluxo Principal" -d ./5-results/SCR1ACMOVATENDIME-001 "3-tests/1-ATENDIMENTO/C_MOV_ATENDIME.robot"
# robot -v browser:firefox -t "SCR1ACMOVATENDIME-001:Fluxo Principal" -d ./5-results/SCR1ACMOVATENDIME-001 "3-tests/1-ATENDIMENTO/C_MOV_ATENDIME.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1ACMOVATENDIME-001"
    Acessar a tela "Atendimento>Internação>Consultas>Movimentação do Atendimento"@nprint @las
    Validar Acesso a Tela |Atendimento|

    Pesquisar Atendimentos
    Visualizar Dados da Movimentacao
    Validar Pesquisa |${dados}[TipoMov]|
    
