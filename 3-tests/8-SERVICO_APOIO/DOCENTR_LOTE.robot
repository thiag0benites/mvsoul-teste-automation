#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Protocolos de Entrada de Documentos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\DOCENTRLOTE.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\DOCENTRLOTE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\DOCENTRLOTE.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\DOCENTRLOTE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/DOCENTR_LOTE_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          DOCENTR_LOTE
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SDOCENTRLOTE-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SDOCENTRLOTE-001:Fluxo Principal" -d ./5-results/SCR8SDOCENTRLOTE-001 "3-tests/8-SERVICO_APOIO/DOCENTR_LOTE.robot"
# robot -v browser:firefox -t "SCR8SDOCENTRLOTE-001:Fluxo Principal" -d ./5-results/SCR8SDOCENTRLOTE-001 "3-tests/8-SERVICO_APOIO/DOCENTR_LOTE.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SDOCENTRLOTE-001"
    Acessar a tela "Serviços de Apoio>Serviço Arquivo Médico>SAME>Entrada de Documentos por Lote"@nprint @las
    Preencher Same |${dados}[SAME]|
    Validar Acesso a Tela |Entrada de Documentos no SAME|
    Preencher Datas |${dados}[DataIni]| |${dados}[DataFim]|
    Preencher Tipo, Matricula e Pesquisar |${dados}[TipoAtend]| |${dados}[MatCad]|
    Dar Entrada |${dados}[MsgSucesso]| 
    Imprimir |${dados}[MsgImpressao]|