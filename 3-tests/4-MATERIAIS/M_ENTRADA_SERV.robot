#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Entrada dos Serviços
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_ENTRADA_SERV.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_ENTRADA_SERV.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_ENTRADA_SERV.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_ENTRADA_SERV.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../2-pages/4-MATERIAIS/M_ENTRADA_SERV_PAGE.robot
Resource            ../../1-resources/4-MATERIAIS/M_ENTRADA_SERV_STEPS.robot
Resource            ../../Config.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_entrada_serv
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMENTRADASERV-001:Fluxo Principal   
# robot -v browser:chrome -t "SCR4MMENTRADASERV-001:Fluxo Principal" -d ./5-results/SCR4MMENTRADASERV-001 "3-tests/4-MATERIAIS/M_ENTRADA_SERV.robot"
# robot -v browser:firefox -t "SCR4MMENTRADASERV-001:Fluxo Principal" -d ./5-results/SCR4MMENTRADASERV-001 "3-tests/4-MATERIAIS/M_ENTRADA_SERV.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMENTRADASERV-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Movimentações>Entradas>Entrada de Serviços"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Campo Tipo de Documento |${dados}[TpDocumento]|
    Preencher Campo Oficina |${dados}[Oficina]|
    Preencher Campos Obrigatorios |${dados}[NrDocumento]| |${dados}[Serie]| |${dados}[Fornecedor]| |${dados}[DtEmissao]| |${dados}[CFOP]| |${dados}[VlTotal]|
    Clicar no Botao Servicos |${dados}[TelaServico]|
    Preencher Dados do Servico |${dados}[Servico]| |${dados}[QtdEntrada]| |${dados}[VlUnitario]| 
    Clicar Botao Rateio por Setor
    Preencher Informacoes de Rateio |${dados}[Setor]| |${dados}[TxRateio]|
    Clicar Botao Sair |${dados}[NomeTela]|
    Clicar Botao Duplicata |${dados}[TelaDuplicata]|
    Preencher Campos Duplicata |${dados}[Parcela]| |${dados}[DtVencimento]| |${dados}[VlParcela]|
    Concluir e Avaliar |${dados}[MensagemSalvar]|
    #Retornar massa de dados para status inicial do teste
    Excluir Nota de Entrada Criada |${dados}[NrDocumento]| |${dados}[Serie]| |${dados}[Fornecedor]| |${dados}[MensagemExcluir]| |${dados}[MensagemExcluirSucesso]|

