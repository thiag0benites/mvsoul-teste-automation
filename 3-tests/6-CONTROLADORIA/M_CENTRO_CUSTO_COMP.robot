#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_CENTRO_CUSTO_COMP_STEPS "3-tests\6 - CONTROLADORIA\M_CENTRO_CUSTO_COMP.robot"
# chrome:         robot -v browser:firefox -d ./5-results/M_CENTRO_CUSTO_COMP_STEPS "3-tests\6 - CONTROLADORIA\M_CENTRO_CUSTO_COMP.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_CENTRO_CUSTO_COMP_STEPS "3-tests\6 - CONTROLADORIA\M_CENTRO_CUSTO_COMP.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_CENTRO_CUSTO_COMP_STEPS "3-tests\6 - CONTROLADORIA\M_CENTRO_CUSTO_COMP.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes

Resource            ../../1-resources/6-CONTROLADORIA/M_CENTRO_CUSTO_COMP_STEPS.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao


*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}          m_centro_custo_comp
# # Recebe dados do gerenciador
${dados}

*** Test Case ***

SMF-9478 : Cadastrar Centro de Custo - Bloco Classificação-1
# robot -v browser:chrome -t "SMF-9478 : Cadastrar Centro de Custo - Bloco Classificação-1" -d ./5-results/SMF-9478 "3-tests/6-CONTROLADORIA/M_CENTRO_CUSTO_COMP.robot"
# robot -v browser:firefox -t "SMF-9478 : Cadastrar Centro de Custo - Bloco Classificação-1" -d ./5-results/SMF-9478 "3-tests/6-CONTROLADORIA/M_CENTRO_CUSTO_COMP.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-9478"
    Acessar a tela "Controladoria>Custos>Tabelas>Centros de Custo"@nprint @las
    Preencha no campo descricao/ codigo hierarquico e Selecione no campo centro de custo consolidador |${dados}[Descricao]| |${dados}[Hierarquico]|
    Selecionar no campo Grupo de Centros de Custo
    Selecionar no campo Calcula Evento
    Selecionar no campo Aceita Lancamento
    Clicar no botao Salvar |${dados}[MsgConfirmacaoEsperada]|