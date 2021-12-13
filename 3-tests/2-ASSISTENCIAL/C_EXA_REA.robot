#################################################################################################################################################################
# Autor: Fernando Lima
# Decrição: Teste da tela Consulta de Exames Realizados
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_EXA_REA.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_EXA_REA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_EXA_REA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_EXA_REA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/C_EXA_REA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

#Suite registrada no gerenciador de dados
${suite}            c_exa_rea
#Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2ACEXAREA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2ACEXAREA-001:Fluxo Principal" -d ./5-results/SCR2ACEXAREA-001 "3-tests/2-ASSISTENCIAL/C_EXA_REA.robot"
# robot -v browser:firefox -t "SCR2ACEXAREA-001:Fluxo Principal" -d ./5-results/SCR2AMESPERACOLETA0-001 "3-tests/2-ASSISTENCIAL/C_EXA_REA.robot"
    ${dados}           Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2ACEXAREA-001"
    Acessa a Tela Pela Busca |c_exa_rea||Exames Realizados| @las
    Validar Acesso a Tela |Consulta de Exames Realizados|
    Preencher Data |${dados}[DtFiltro]|
    Clicar Botao Consultar
    Validar Dados Solicitacao |${dados}[NomePaciente]| |${dados}[NomeExame]| |${dados}[NomeMedico]|
    Clicar Botao Visualizar Laudo
