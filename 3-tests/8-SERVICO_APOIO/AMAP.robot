#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela AMAP (Escolha de Same Obrigatoria)
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\AMAP.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\AMAP.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\AMAP.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\AMAP.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/AMAP_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          AMAP
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SAMAP-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SAMAP-001:Fluxo Principal" -d ./5-results/SCR8SAMAP-001 "3-tests/8-SERVICO_APOIO/AMAP.robot"
# robot -v browser:firefox -t "SCR8SAMAP-001:Fluxo Principal" -d ./5-results/SCR8SAMAP-001 "3-tests/8-SERVICO_APOIO/AMAP.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SAMAP-001"
    Acessar a tela "Serviços de Apoio>Serviço Arquivo Médico>SAME>Saída de Documentos>Por Paciente / Agenda Médica"@nprint @las
    Preencher Same |${dados}[SAME]|
    Acessar Same    