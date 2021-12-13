#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela M_COTA_SETOR
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_COTA_SETOR "3-tests\4-MATERIAIS\M_COTA_SETOR.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_COTA_SETOR "3-tests\4-MATERIAIS\M_COTA_SETOR.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_COTA_SETOR.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_COTA_SETOR.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/M_COTA_SETOR_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}           m_cota_setor
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-9209:Fluxo Principal
# robot -v browser:chrome -t "SMF-9209:Fluxo Principal" -d ./5-results/SMF-9209 "3-tests/4-MATERIAIS/M_COTA_SETOR.robot"
# robot -v browser:firefox -t "SMF-9209:Fluxo Principal" -d ./5-results/SMF-9209 "3-tests/4-MATERIAIS/M_COTA_SETOR.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-9209"
    #Acessar |${dados}[tela]|@nprint @las
    Acessar |M_COTA_SETOR|@nprint @las
    Preencher os campos Estoque|${dados}[estoque]|, Setor|${dados}[setor]|, Cód Produto|${dados}[codProduto]|, Unidade|${dados}[unidade]|, Qtd Cota|${dados}[qtdCota]|, Dias|${dados}[dias]|, Cód Gabarito|${dados}[codGabarito]|
    Selecionar checbox [Desat]
    Clicar no botao [Salvar]
    Valida Mensagem     ${mensagemPop}     ${dados}[msgEsperada]
    