#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Cadastro do Fornecedor/Cliente
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_FORNEC.robot"
# firefox: robot -v browser:firefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_FORNEC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_FORNEC.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_FORNEC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/6-CONTROLADORIA/M_FORNEC_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_fornec
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6CMFORNEC-001:Fluxo Principal
# robot -v browser:chrome -t "SCR6CMFORNEC-001:Fluxo Principal" -d ./5-results/SCR6CMFORNEC-001 "3-tests/6-CONTROLADORIA/M_FORNEC.robot"
# robot -v browser:firefox -t "SCR6CMFORNEC-001:Fluxo Principal" -d ./5-results/SCR6CMFORNEC-001 "3-tests/6-CONTROLADORIA/M_FORNEC.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6CMFORNEC-001"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Tabelas>Fornecedor/Cliente"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Dados do Fornecedor |${dados}[Fornecedor]| |${dados}[NomeFantasia]| |${dados}[Constituicao]| |${dados}[CNPJ]| |${dados}[InsEstadual]| |${dados}[InsMunicipal]| |${dados}[CEP]| |${dados}[Numero]| |${dados}[TpPagamento]| |${dados}[SimplesNacional]|
    Preencher Dados Aba Conta Contabil |${dados}[CdReduzido]| |${dados}[TpConta]|
    Preencher Dados Aba Conta Corrente |${dados}[Banco]| |${dados}[Agencia]| |${dados}[DvAgencia]| |${dados}[DescAgencia]| |${dados}[NrConta]| |${dados}[DvConta]|
    Preencher Dados Aba Ramo de Atividade |${dados}[RamoAtividade]|
    Clicar Botao Salvar |${dados}[MensagemSucesso]|
    # Retornar massa de dados para status inicial do teste
    Excluir Fornecedor Cadastrado |${dados}[MsgExcluir]| |${dados}[MensagemSucesso]|