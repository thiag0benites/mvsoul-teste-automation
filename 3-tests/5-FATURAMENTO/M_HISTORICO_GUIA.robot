#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Historico de Guias
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_HISTORICO_GUIA.robot"
# firefox: robot -v browser:firefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_HISTORICO_GUIA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_HISTORICO_GUIA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_HISTORICO_GUIA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/5-FATURAMENTO/M_HISTORICO_GUIA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_HISTORICO_GUIA
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMHISTORICOGUIA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5FMHISTORICOGUIA-001:Fluxo Principal" -d ./5-results/SCR5FMHISTORICOGUIA-001 "3-tests/5-FATURAMENTO/M_HISTORICO_GUIA.robot"
# robot -v browser:firefox -t "SCR5FMHISTORICOGUIA-001:Fluxo Principal" -d ./5-results/SCR5FMHISTORICOGUIA-001 "3-tests/5-FATURAMENTO/M_HISTORICO_GUIA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMHISTORICOGUIA-001"
    Acessar a tela pela busca |M_GUIAS||Central de Guias| @las
    Acessar Tela pelo Botao |${dados}[Atend]|
    Adicionar nova Guia |${dados}[Obs]|
    Clicar Botao Salvar |${dados}[MsgSalva]|
