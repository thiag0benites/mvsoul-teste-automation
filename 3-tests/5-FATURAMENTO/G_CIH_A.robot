#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela G_CIH_A
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/G_CIH_A "3-tests/5-FATURAMENTO/G_CIH_A.robot"
# firefox: robot -v browser:firefox -d ./5-results/G_CIH_A "3-tests/5-FATURAMENTO/G_CIH_A.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/G_CIH_A "3-tests/5-FATURAMENTO/G_CIH_A.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/G_CIH_A "3-tests/5-FATURAMENTO/G_CIH_A.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource        ../../1-resources/5-FATURAMENTO/G_CIH_A_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            g_cih_a
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5GCIHA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5GCIHA-001:Fluxo Principal" -d ./5-results/SCR5GCIHA-001 "3-tests/5-FATURAMENTO/G_CIH_A.robot"
# robot -v browser:firefox -t "SCR5GCIHA-001:Fluxo Principal" -d ./5-results/SCR5GCIHA-001 "3-tests/5-FATURAMENTO/G_CIH_A.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5GCIHA-001"
    Acessar a tela "Faturamento>Comunicação de Inf. Hosp. e Amb. (CIHA)>Geração>Geração de Arquivo"@nprint @las
    Preencher Campo Dt Competencia|${dados}[dtCompet]|
    Clicar no botao[Gerar Arquivo]
    Clicar no botao[sim]
    Clicar no botao[sim2]
    Clicar no botao[Imprimir]
    Valida aba do browser

SCR5GCIHA-002:Fluxo Principal
# robot -v browser:chrome -t "SCR5GCIHA-002:Fluxo Principal" -d ./5-results/SCR5GCIHA-002 "3-tests/5-FATURAMENTO/G_CIH_A.robot"
# robot -v browser:firefox -t "SCR5GCIHA-002:Fluxo Principal" -d ./5-results/SCR5GCIHA-002 "3-tests/5-FATURAMENTO/G_CIH_A.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5GCIHA-002"
    Acessar a tela "Faturamento>Comunicação de Inf. Hosp. e Amb. (CIHA)>Geração>Geração de Arquivo"@nprint @las
    Preencher Campo Dt Competencia|${dados}[dtCompet]|
    Selecionar aba convenio
    Prencher campo Codigo|${dados}[codConvenio]|
    Selecionar aba unidade
    Preencher campo Unidade|${dados}[unidade]|
    Selecionar aba Origem Ambulatorial 
    Preencher campo codigo|${dados}[codOrigemAmb]|
    Selecionar aba Origem Internacao
    Preencher campo codigo OrigemInt|${dados}[codOrigemInt]|
    Selecionar aba Parametros
    Clicar no botao[Imprimir Inconsistencia]
    Clicar no botao[Imprimir2]
    Valida aba do browser
