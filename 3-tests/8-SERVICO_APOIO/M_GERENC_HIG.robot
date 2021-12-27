#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Gerenciamento de Higienizações de Leitos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_GERENC_HIG.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_GERENC_HIG.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_GERENC_HIG.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_GERENC_HIG.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/M_GERENC_HIG_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_GERENC_HIG
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SMGERENCHIG-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SMGERENCHIG-001:Fluxo Principal" -d ./5-results/SCR8SMGERENCHIG-001 "3-tests/8-SERVICO_APOIO/M_GERENC_HIG.robot"
# robot -v browser:firefox -t "SCR8SMGERENCHIG-001:Fluxo Principal" -d ./5-results/SCR8SMGERENCHIG-001 "3-tests/8-SERVICO_APOIO/M_GERENC_HIG.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMGERENCHIG-001"
    #Acessar a tela "Serviços de Apoio>Higienização>Atendimento>Gerenciamento de Higienizações de Leitos"@nprint @las
    Acessar a tela pela busca |M_GERENC_HIG||Gerenciamento de Higienizações de Leitos| @las
    Validar Acesso a Tela |Gerenciamento de Higienizações de Leitos|

    Testar Lov das Unidades
    Consultar e Validar todas as Unidades |${dados}[Unidades]| |${dados}[Apartamento]| |${dados}[Enfermaria]| |${dados}[Leito]|