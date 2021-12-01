#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela M_DEVFOR - Devolução de produtos para fornecedores
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_DEVFOR "3-tests\4-MATERIAIS\M_DEVFOR.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_DEVFOR "3-tests\4-MATERIAIS\M_DEVFOR.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_DEVFOR.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_DEVFOR.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/M_DEVFOR_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}           m_devfor
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-3963:Fluxo Principal
# robot -v browser:chrome -t "SMF-3963:Fluxo Principal" -d ./5-results/SMF-3963 "3-tests/4-MATERIAIS/M_DEVFOR.robot"
# robot -v browser:firefox -t "SMF-3963:Fluxo Principal" -d ./5-results/SMF-3963 "3-tests/4-MATERIAIS/M_DEVFOR.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-3963"
    Acessar a tela "Materiais e Logística>Almoxarifado>Movimentações>Devoluções>Para Fornecedores"@nprint @las
    Preencher os campos Entrada|${dados}[entrada]|, Nr Documento|${dados}[nrDocumento]|, Serie|${dados}[serie]|, Motivo de Devolucao|${dados}[mDevolucao]|
    Preencher o campo Produto|${dados}[produto]|, Qtde. Devolvida.|${dados}[qtdDevolvida]|
    Clicar no botao [Salvar]
    Valida Mensagem     ${mensagemPop}     ${dados}[msgEsperada]
    Clicar no botao [Sim]