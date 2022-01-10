#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Teste da tela Consulta Resultados de Exame
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_RES_EXA_PSSD.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_RES_EXA_PSSD.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_RES_EXA_PSSD.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_RES_EXA_PSSD.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/2-ASSISTENCIAL/C_RES_EXA_PSSD_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          C_RES_EXA_PSSD
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2ACRESEXAPSSD-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2ACRESEXAPSSD-001:Fluxo Principal" -d ./5-results/SCR2ACRESEXAPSSD-001 "3-tests/2-ASSISTENCIAL/C_RES_EXA_PSSD.robot"
# robot -v browser:firefox -t "SCR2ACRESEXAPSSD-001:Fluxo Principal" -d ./5-results/SCR2ACRESEXAPSSD-001 "3-tests/2-ASSISTENCIAL/C_RES_EXA_PSSD.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2ACRESEXAPSSD-001"
    Acessar |${dados}[tela]|@nprint @las
    Preencher o campo Amostra|${dados}[amostra]|
    Selecionar checbox [Impresso]
    Clicar no botao[Imprimir]
    Valida aba Browser
