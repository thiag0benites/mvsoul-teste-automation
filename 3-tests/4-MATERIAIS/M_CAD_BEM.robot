#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela  Produtos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_CAD_BEM.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_CAD_BEM.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_CAD_BEM.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_CAD_BEM.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/4-MATERIAIS/M_CAD_BEM_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_cad_bem
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMCADBEM-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MMCADBEM-001:Fluxo Principal" -d ./5-results/SCR4MMCADBEM-001 "3-tests/4-MATERIAIS/M_CAD_BEM.robot"
# robot -v browser:firefox -t "SCR4MMCADBEM-001:Fluxo Principal" -d ./5-results/SCR4MMCADBEM-001 "3-tests/4-MATERIAIS/M_CAD_BEM.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMCADBEM-001"
    Acessar a tela "Materiais e Logística>Patrimônio>Gerenciamento>Cadastro de Bens"@nprint @las
    #Validar Acesso a Tela |Dados do bem|
    Preencher Campos de Dados do Bem |${dados}[DescricaoPlaqueta]| |${dados}[DescricaoBem]| |${dados}[NrSerie]| |${dados}[Marca]| |${dados}[Modelo]| |${dados}[TpAquisicao]| |${dados}[Especie]| |${dados}[Classe]| |${dados}[Subclasse]|
    Preencher Campos Classificao para Contabilidade |${dados}[Classificacao]| |${dados}[Subclassificacao]|
    Preencher Campos de Localizacao do Bem |${dados}[CentroCusto]| |${dados}[Localidade]|
    Acessar Aba Dados da Compra
    Preencher Data da Compra |${dados}[DataCompra]|
    Acessar Aba Manutencao
    Preencher Dados Manutencao |${dados}[Periodicidade]| |${dados}[VencGarantia]|
    Salvar Cadastro de Bem |${suite}| |${dados}[id]|
    # Retornar massa de dados para status inicial
    Excluir Bem Cadastrado |${dados}[DescricaoPlaqueta]| |${dados}[DescricaoBem]| |${dados}[MensagemExcluir]|

