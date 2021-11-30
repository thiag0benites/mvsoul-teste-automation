#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-resultsO_LANEXTR_STEPS "3-tests\6-CONTROLADORIA\O_LANEXTR.robot"
# chrome:         robot -v browser:firefox -d ./5-results/O_LANEXTR_STEPS "3-tests\6-CONTROLADORIA\O_LANEXTR.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/O_LANEXTR_STEPS "3-tests\6-CONTROLADORIA\O_LANEXTR.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/O_LANEXTR_STEPS "3-tests\6-CONTROLADORIA\O_LANEXTR.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/6-CONTROLADORIA/O_LANEXTR_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}          o_lanextr
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-5514 : Realizar Lançamento Bancário
# robot -v browser:chrome -t "SMF-5514 : Realizar Lançamento Bancário" -d ./5-results/SMF-5514 "3-tests/6-CONTROLADORIA/O_LANEXTR.robot"
# robot -v browser:firefox -t "SMF-5514 : Realizar Lançamento Bancário" -d ./5-results/SMF-5514 "3-tests/6-CONTROLADORIA/O_LANEXTR.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5514"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Bancário>Movimentação>Lançamentos de Extratos"@nprint @las
    Informar a Empresa no campo correspondente
    Selecionar a conta corrente
    Selecionar uma opcao no campo Conciliado
    Indicar o periodo que se deseja trabalhar e clicar em Pesquisar |${dados}[DataInicial]| |${dados}[DataFinal]|
    Clicar no icone de adicao
    Preencher os campos com as informacoes do lançamento faltante |${dados}[ValorCampo]|
    Clicar em Concil para algum lancamento |${dados}[MsgVerificada]|