#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_PROC_SUS_CONSULTA
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_PROC_SUS_CONSULTA "3-tests/5-FATURAMENTO/M_PROC_SUS_CONSULTA.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_PROC_SUS_CONSULTA "3-tests/5-FATURAMENTO/M_PROC_SUS_CONSULTA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_PROC_SUS_CONSULTA "3-tests/5-FATURAMENTO/M_PROC_SUS_CONSULTA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_PROC_SUS_CONSULTA "3-tests/5-FATURAMENTO/M_PROC_SUS_CONSULTA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/5-FATURAMENTO/M_PROC_SUS_CONSULTA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_PROC_SUS_CONSULTA
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMPROCSUSCONSULTA-001:Fluxo principal
# robot -v browser:chrome -t "SCR5FMPROCSUSCONSULTA-001:Fluxo principal" -d ./5-results/M_PROC_SUS_CONSULTA "3-tests/5-FATURAMENTO/M_PROC_SUS_CONSULTA.robot"
# robot -v browser:firefox -t "SCR5FMPROCSUSCONSULTA-001:Fluxo principal" -d ./5-results/M_PROC_SUS_CONSULTA "3-tests/5-FATURAMENTO/M_PROC_SUS_CONSULTA.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMPROCSUSCONSULTA-001"
    Acessar a tela "Faturamento>Faturamento de Internação SUS (AIH)>Tabelas>Procedimentos>Procedimentos"@nprint @las
    Pesquisar por procedimento
    Validar Resultado da Pesquisa |${dados}[dado]| 
    Clicar no proximo registro