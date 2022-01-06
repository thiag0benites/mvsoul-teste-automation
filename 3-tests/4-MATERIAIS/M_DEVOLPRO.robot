#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_DEVOLPRO
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_DEVOLPRO "3-tests/4-MATERIAIS/M_DEVOLPRO.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_DEVOLPRO "3-tests/4-MATERIAIS/M_DEVOLPRO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_DEVOLPRO "3-tests/4-MATERIAIS/M_DEVOLPRO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_DEVOLPRO "3-tests/4-MATERIAIS/M_DEVOLPRO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/M_DEVOLPRO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_DEVOLPRO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMDEVOLPRO-001:Fluxo principal
# robot -v browser:chrome -t "SCR4MMDEVOLPRO-001:Fluxo principal" -d ./5-results/M_DEVOLPRO "3-tests/4-MATERIAIS/M_DEVOLPRO.robot"
# robot -v browser:firefox -t "SCR4MMDEVOLPRO-001:Fluxo principal" -d ./5-results/M_DEVOLPRO "3-tests/4-MATERIAIS/M_DEVOLPRO.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMDEVOLPRO-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Marcar o check box <2- Setor> 
    Preencher os campos |${dados}[SolicitaEstoque]|,|${dados}[MotivoDevolucao]|,|${dados}[Setor]|
    #Clique no botao Sim da notificacao da tela de devolucao do produto
    Preencher produto solicitado |${dados}[Produto]|,|${dados}[Lote]|,|${dados}[Quantidade]|,|${dados}[Data]|
    Clique em salvar 
    Validar cadastro realizado |${dados}[MsgEsperada]|
