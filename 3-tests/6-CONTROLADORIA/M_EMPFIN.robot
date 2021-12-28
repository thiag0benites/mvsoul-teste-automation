#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Empresas
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_EMPFIN.robot"
# firefox: robot -v browser:firefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_EMPFIN.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_EMPFIN.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\M_EMPFIN.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/6-CONTROLADORIA/M_EMPFIN_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_empfin
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6CMEMPFIN-001:Fluxo Principal
# robot -v browser:chrome -t "SCR6CMEMPFIN-001:Fluxo Principal" -d ./5-results/SCR6CMEMPFIN-001 "3-tests/6-CONTROLADORIA/M_EMPFIN.robot"
# robot -v browser:firefox -t "SCR6CMEMPFIN-001:Fluxo Principal" -d ./5-results/SCR6CMEMPFIN-001 "3-tests/6-CONTROLADORIA/M_EMPFIN.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6CMEMPFIN-001"
    Acessa a Tela Pela Busca |M_EMPFIN||Empresas| @las
    #Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar, Cta a Receber, Bancos)>Tabelas>Empresas"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Dados Aba Empresa |${dados}[Codigo]| |${dados}[NomeFantasia]| |${dados}[RazaoSocial]| |${dados}[CNPJ]| |${dados}[InscEstadual]| |${dados}[Logradouro]| |${dados}[Endereco]| |${dados}[Numero]| |${dados}[CEP]| |${dados}[Cidade]| |${dados}[DDD]| |${dados}[Telefone]| |${dados}[Moeda]|
    Preencher Dados Aba Associacoes |${dados}[TipoEmpresa]| 
    Preencher Dados Aba Informacoes Adicionais |${dados}[DiretorGeral]| |${dados}[DDDFax]| |${dados}[NrFax]| |${dados}[EmailResp]| |${dados}[Contador]| |${dados}[Fornecedor]|
    Preencher Dados Aba Transacoes Entre Empresas |${dados}[CdReduzido]|
    Preencher Dados Aba SPED |${dados}[SitEspecial]| |${dados}[Suframa]| |${dados}[RepLegal]| |${dados}[CPFRepLegal]| |${dados}[QualiRepLegal]|
    Preencher Dados Aba SPED Contribuicoes |${dados}[PIS]| |${dados}[Confins]| |${dados}[RegIncidencia]| |${dados}[MtdApropriacao]| |${dados}[CdIndicador]|
    Acessar Aba Nota Fiscal Eletronica
    Preencher Dados Aba Livro ISS DF |${dados}[NomeTecnico]|
    Acessar Aba Substituicao
    Clicar Botao Salvar |${dados}[MensagemSucesso]|