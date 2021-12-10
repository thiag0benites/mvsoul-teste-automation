#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela M_SOLCOM - Solicitação de Compra
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_SOLCOM "3-tests\4-MATERIAIS\M_SOLCOM.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_SOLCOM "3-tests\4-MATERIAIS\M_SOLCOM.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_SOLCOM.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_SOLCOM.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/M_SOLCOM_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}           m_solcom
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-742:Fluxo Principal
# robot -v browser:chrome -t "SMF-742:Fluxo Principal" -d ./5-results/SMF-742 "3-tests/4-MATERIAIS/M_SOLCOM.robot"
# robot -v browser:firefox -t "SMF-742:Fluxo Principal" -d ./5-results/SMF-742 "3-tests/4-MATERIAIS/M_SOLCOM.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-742"
    Acessar a tela "Materiais e Logística>Compras>Compras>Solicitação de Compras>Cadastro"@nprint @las
    Preencher o campos dtMaxima[data atual], Setor|${dados}[setor]|, Nome do Solicitante|${dados}[nSolicitante]|, Motivo do Pedido|${dados}[motPedido]|, Comprador|${dados}[comprador]|, Estoque|${dados}[estoque]|, Produto|${dados}[produto]|
    Valida Mensagem     ${mensagemPop}     ${dados}[msgEsperada]
    Clicar no botao [Sim]
    Preencher o campo QtdSolicitada|${dados}[qtdSolicitada]|
    Clicar no botao [Salvar]
    Clicar no botao [SimLimpar]