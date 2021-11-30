#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela M_COLPRE
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_COLPRE "3-tests\4-MATERIAIS\M_COLPRE.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_COLPRE "3-tests\4-MATERIAIS\M_COLPRE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_COLPRE.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_COLPRE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/M_COLPRE_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}           m_colpre
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-4044:Fluxo Principal
# robot -v browser:chrome -t "SMF-4044:Fluxo Principal" -d ./5-results/SMF-4044 "3-tests/4-MATERIAIS/M_COLPRE.robot"
# robot -v browser:firefox -t "SMF-4044:Fluxo Principal" -d ./5-results/SMF-4044 "3-tests/4-MATERIAIS/M_COLPRE.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4044"
    Acessar a tela "Materiais e Logística>Compras>Compras>Coleta de Preços (Licitação)>Cadastro de Coleta de Preços"@nprint @las
    Preencher os campos Solicitacao|${dados}[solicitacao]|, Fornecedor|${dados}[fornecedor]|, Dt Validade|${dados}[dtValidade]|, Condicao pagamentos|${dados}[condPagamentos]|, Valor Total Coleta|${dados}[vlTotColeta]|
    Clicar no botao [Produtos]
    Preencher O Campo Produto|${dados}[produto]|, Quantidade Cotada|${dados}[qtdCotada]|, Valor Unitario|${dados}[vlUntario]|
    Clicar no botao [ConfirmaPreco]
    Clicar no botao [Salvar]
    Valida Mensagem     ${mensagemPop}     ${dados}[msgEsperada]
    Captura codigo|${suite}|${dados}[id]|
    Clicar no botao [Sim]