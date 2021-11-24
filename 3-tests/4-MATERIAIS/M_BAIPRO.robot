#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela M_BAIPRO - Baixa de produtos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_BAIPRO "3-tests\4-MATERIAIS\M_BAIPRO.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_BAIPRO "3-tests\4-MATERIAIS\M_BAIPRO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_BAIPRO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_BAIPRO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/M_BAIPRO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
#Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}           m_baipro
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-5117:Fluxo Principal
# robot -v browser:chrome -t "SMF-5117:Fluxo Principal" -d ./5-results/SMF-5117 "3-tests/4-MATERIAIS/M_BAIPRO.robot"
# robot -v browser:firefox -t "SMF-5117:Fluxo Principal" -d ./5-results/SMF-5117 "3-tests/4-MATERIAIS/M_BAIPRO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5117"
    Acessar |${dados}[tela]|@nprint @las
    Preencher os campos Estoque|${dados}[estoque]|, Setor|${dados}[setor]|, Observação|${dados}[observação]|, Motivo da Baixa|${dados}[mBaixa]|
    Clicar no botao [Digitar cód de Barras]
    Preencher o campo Produto|${dados}[produto]|, Unidade.|${dados}[unidade]|, Qtde. Disp.|${dados}[qtdDisp]|
    Selecionar checkbox Doacao
    Clicar no botao [Salvar]
    