#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Relatorio de Pacientes Atendidos por Origem
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\R_LISTA_ATENDE_PERIODO.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\R_LISTA_ATENDE_PERIODO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\R_LISTA_ATENDE_PERIODO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\R_LISTA_ATENDE_PERIODO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/R_LISTA_ATENDE_PERIODO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            r_lista_atende_periodo
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1ARLISTAATENDEPERIODO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1ARLISTAATENDEPERIODO-001:Fluxo Principal" -d ./5-results/SCR1ARLISTAATENDEPERIODO-001 "3-tests/1-ATENDIMENTO/R_LISTA_ATENDE_PERIODO.robot"
# robot -v browser:firefox -t "SCR1ARLISTAATENDEPERIODO-001:Fluxo Principal" -d ./5-results/SCR1ARLISTAATENDEPERIODO-001 "3-tests/1-ATENDIMENTO/R_LISTA_ATENDE_PERIODO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1ARLISTAATENDEPERIODO-001"
    #Acessa a Tela Pela Busca |R_LISTA_ATENDE_PERIODO||Atendimentos por Período| @las
    Acessar a tela "Atendimento>Ambulatório>Relatórios>Operacionais>Atendimentos por Período"@nprint @las
    Selecionar Parametros de Impressao |${dados}[Origem]| |${dados}[DtInicial]|
    Realizar Impressao do Relatorio