#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Documento de Entrada
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_DOCENT.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_DOCENT.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_DOCENT.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_DOCENT.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/M_DOCENT_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_docent
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMDOCENT-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MMDOCENT-001:Fluxo Principal" -d ./5-results/SCR4MMDOCENT-001 "3-tests/4-MATERIAIS/M_DOCENT.robot"
# robot -v browser:firefox -t "SCR4MMDOCENT-001:Fluxo Principal" -d ./5-results/SCR4MMDOCENT-001 "3-tests/4-MATERIAIS/M_DOCENT.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMDOCENT-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Movimentações>Entradas>Documento de Entrada"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Dados do Documento |${dados}[Fornecedor]| |${dados}[NrDocumento]| |${dados}[Serie]| |${dados}[TpDocumento]| |${dados}[DtEmissao]| |${dados}[DtEntrada]| |${dados}[CFOP]| |${dados}[VlTotal]|
    Preencher Dados da Duplicata |${dados}[MsgTotalProduto]| |${dados}[Parcela]| |${dados}[DtVencimento]| |${dados}[VlParcela]|
    Salvar Documento de Entrada |${dados}[MsgSucesso]| |${dados}[MsgLimpaTela]| |${dados}[Fornecedor]|
    # Retornar massa de dados para status inicial do teste
    Excluir Documento de Entrada |${dados}[MsgExcluir]| |${dados}[MsgSucesso]|
