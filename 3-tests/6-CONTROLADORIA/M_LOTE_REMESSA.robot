#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Lotes de Remessa
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_LOTE_REMESSA.robot"
# firefox: robot -v browser:firefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_LOTE_REMESSA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_LOTE_REMESSA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_LOTE_REMESSA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/6-CONTROLADORIA/M_LOTE_REMESSA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_lote_remessa
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6CMLOTEREMESSA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR6CMLOTEREMESSA-001:Fluxo Principal" -d ./5-results/SCR6CMLOTEREMESSA-001 "3-tests/6-CONTROLADORIA/M_LOTE_REMESSA.robot"
# robot -v browser:firefox -t "SCR6CMLOTEREMESSA-001:Fluxo Principal" -d ./5-results/SCR6CMLOTEREMESSA-001 "3-tests/6-CONTROLADORIA/M_LOTE_REMESSA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6CMLOTEREMESSA-001"
    Acessar a tela "Controladoria>Intercâmbio Eletrônico de Arquivos>Arquivos>Bancos>Lotes de Remessa"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Criar Lote de Remessa |${dados}[Descricao]| |${dados}[Processo]| |${dados}[Bordero]| |${dados}[MsgDtPagamento]|
    Clicar Botao Salvar |${dados}[MensagemSucesso]|
    Preencher Bloco Selecionar Contas a Pagar |${dados}[MsgConsulta]| |${dados}[Fornecedor]| |${dados}[CNPJ]|
    Associar Contas a Pagar |${dados}[MsgValidaDtPagamento]| |${dados}[CtPagar]|
    # Retornar massa de dados para status inicial do teste
    Excluir Lote Remessa |${dados}[CtPagar]|