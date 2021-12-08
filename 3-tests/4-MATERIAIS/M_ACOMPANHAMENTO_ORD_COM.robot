#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Follow-Up
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_ACOMPANHAMENTO_ORD_COM.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_ACOMPANHAMENTO_ORD_COM.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_ACOMPANHAMENTO_ORD_COM.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_ACOMPANHAMENTO_ORD_COM.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/M_ACOMPANHAMENTO_ORD_COM_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_acompanhamento_ord_com
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMACOMPANHAMENTOORDCOM-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MMACOMPANHAMENTOORDCOM-001:Fluxo Principal" -d ./5-results/SCR4MMACOMPANHAMENTOORDCOM-001 "3-tests/4-MATERIAIS/M_ACOMPANHAMENTO_ORD_COM.robot"
# robot -v browser:firefox -t "SCR4MMACOMPANHAMENTOORDCOM-001:Fluxo Principal" -d ./5-results/SCR4MMACOMPANHAMENTOORDCOM-001 "3-tests/4-MATERIAIS/M_ACOMPANHAMENTO_ORD_COM.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMACOMPANHAMENTOORDCOM-001"
    Acessar a tela "Materiais e Logística>Compras>Tabelas>Follow Up"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Dados de Pesquisa |${dados}[Fornecedor]|
    Validar Dados Pesquisa |${dados}[Estoque]| |${dados}[Fornecedor]|
    Preencher Novo Contato |${dados}[DtContato]| |${dados}[HrContato]| |${dados}[NomeContato]| |${dados}[FoneContato]| |${dados}[EmailContato]|
    Preencher Historico Follow Up |${dados}[HistoricoFollowUp]|
    Clicar Botao Salvar