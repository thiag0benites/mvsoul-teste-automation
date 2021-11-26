#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Entrada de Consignado
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_CONSIGNADO_ENT.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_CONSIGNADO_ENT.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_CONSIGNADO_ENT.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_CONSIGNADO_ENT.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/M_CONSIGNADO_ENT_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_consignado_ent
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMCONSIGNADOENT-001:Fluxo Principal   
# robot -v browser:chrome -t "SCR4MMCONSIGNADOENT-001:Fluxo Principal" -d ./5-results/SCR4MMCONSIGNADOENT-001 "3-tests/4-MATERIAIS/M_CONSIGNADO_ENT.robot"
# robot -v browser:firefox -t "SCR4MMCONSIGNADOENT-001:Fluxo Principal" -d ./5-results/SCR4MMCONSIGNADOENT-001 "3-tests/4-MATERIAIS/M_CONSIGNADO_ENT.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMCONSIGNADOENT-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Movimentações>Entradas>Consignado"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Tipo de Consignacao |${dados}[TpConsignacao]|
    Preencher Estoque e Gerar Aplicacao Direta |${dados}[Estoque]| |${dados}[GerarAplicacaoDireta]|
    Preencher Campos do Documento |${dados}[NrDocumento]| |${dados}[NrSerie]| |${dados}[Fornecedor]| |${dados}[CFOP]| |${dados}[DtEmissao]| |${dados}[DtEntrada]|
    Preencher Campos do Produto |${dados}[Produto]| |${dados}[Unidade]| |${dados}[QtdEntrada]| |${dados}[VlUnitario]|
    Preencher Campos do Lote |${dados}[Lote]| |${dados}[Validade]| |${dados}[QtdEntradaLote]| 
    Concluir e Avaliar |${dados}[MensagemSucesso]| |${dados}[MensagemAlerta]| |${dados}[MensagemSucessoFinal]| 
    #Retornar massa de dados para status inicial do teste
    Excluir Entrada do Consignado |${dados}[NrDocumento]| |${dados}[NrSerie]| |${dados}[Fornecedor]| |${dados}[Estoque]| |${dados}[MensagemExcluir]| |${dados}[MensagemExcluirSucesso]| 