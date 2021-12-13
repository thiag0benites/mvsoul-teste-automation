#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Consulta APAC
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_CONSULTA_APAC.robot"
# firefox: robot -v browser:firefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_CONSULTA_APAC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_CONSULTA_APAC.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_CONSULTA_APAC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/5-FATURAMENTO/M_CONSULTA_APAC_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_CONSULTA_APAC
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMCONSULTAAPAC-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5FMCONSULTAAPAC-001:Fluxo Principal" -d ./5-results/SCR5FMCONSULTAAPAC-001 "3-tests/5-FATURAMENTO/M_CONSULTA_APAC.robot"
# robot -v browser:firefox -t "SCR5FMCONSULTAAPAC-001:Fluxo Principal" -d ./5-results/SCR5FMCONSULTAAPAC-001 "3-tests/5-FATURAMENTO/M_CONSULTA_APAC.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMCONSULTAAPAC-001"
    Acessar a tela "Faturamento>Faturamento Ambulatorial SUS (BPA e APAC)>Consultas>Lançamento APAC" @las
    #Acessar a Tela Pela Busca |M_CONSULTA_APAC||Lançamento APAC| @las 
    Validar Acesso a Tela |Consulta APAC|
    Consultar por Prontuario |${dados}[Prontuario]|
    Validar Consulta Pelos Resultados |${dados}[Sexo]| |${dados}[Tipo]| |${dados}[Endereco]|

SCR5FMCONSULTAAPAC-002:Consultando pela APAC
# robot -v browser:chrome -t "SCR5FMCONSULTAAPAC-002:Consultando pela APAC" -d ./5-results/SCR5FMCONSULTAAPAC-002 "3-tests/5-FATURAMENTO/M_CONSULTA_APAC.robot"
# robot -v browser:firefox -t "SCR5FMCONSULTAAPAC-002:Consultando pela APAC" -d ./5-results/SCR5FMCONSULTAAPAC-002 "3-tests/5-FATURAMENTO/M_CONSULTA_APAC.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMCONSULTAAPAC-002"
    Acessar a tela "Faturamento>Faturamento Ambulatorial SUS (BPA e APAC)>Consultas>Lançamento APAC" @las
    #Acessar a Tela Pela Busca |M_CONSULTA_APAC||Lançamento APAC| @las 
    Validar Acesso a Tela |Consulta APAC|
    Consultar por APAC |${dados}[APAC]|
    Validar Consulta Pelos Resultados |${dados}[Sexo]| |${dados}[Tipo]| |${dados}[Endereco]|

SCR5FMCONSULTAAPAC-003:Consultando pelo CPF
# robot -v browser:chrome -t "SCR5FMCONSULTAAPAC-003:Consultando pelo CPF" -d ./5-results/SCR5FMCONSULTAAPAC-003 "3-tests/5-FATURAMENTO/M_CONSULTA_APAC.robot"
# robot -v browser:firefox -t "SCR5FMCONSULTAAPAC-003:Consultando pelo CPF" -d ./5-results/SCR5FMCONSULTAAPAC-003 "3-tests/5-FATURAMENTO/M_CONSULTA_APAC.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMCONSULTAAPAC-003"
    Acessar a tela "Faturamento>Faturamento Ambulatorial SUS (BPA e APAC)>Consultas>Lançamento APAC" @las
    #Acessar a Tela Pela Busca |M_CONSULTA_APAC||Lançamento APAC| @las 
    Validar Acesso a Tela |Consulta APAC|
    Consultar por CPF |${dados}[CPF]|
    Validar Consulta Pelos Resultados |${dados}[Sexo]| |${dados}[Tipo]| |${dados}[Endereco]|