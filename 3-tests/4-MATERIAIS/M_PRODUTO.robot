#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela  Produtos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_PRODUTO.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_PRODUTO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_PRODUTO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_PRODUTO.robot"
#################################################################################################################################################################
*** Settings *** 
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/4-MATERIAIS/M_PRODUTO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_produto
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMPRODUTO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MMPRODUTO-001:Fluxo Principal" -d ./5-results/SCR4MMPRODUTO-001 "3-tests/4-MATERIAIS/M_PRODUTO.robot"
# robot -v browser:firefox -t "SCR4MMPRODUTO-001:Fluxo Principal" -d ./5-results/SCR4MMPRODUTO-001 "3-tests/4-MATERIAIS/M_PRODUTO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMPRODUTO-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Tabelas>Classificação dos Produtos>Produtos"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Descricao e Tipo do Produto |${dados}[Descricao]| |${dados}[DescResumida]| |${dados}[TpProduto]|
    Preencher Campos Obrigatorios do Produto |${dados}[Unidade]| |${dados}[Especie]| |${dados}[Classe]| |${dados}[Subclasse]|
    Validar Preenchimento dos Campos Obrigatorios |${dados}[Unidade]| |${dados}[Especie]| |${dados}[Classe]| |${dados}[Subclasse]|
    Preencher Campos Lote e Registro Anvisa |${dados}[Lote]| |${dados}[RegAnvisa]|
    Selecionar Atividade do Produto |${dados}[Atividade]| 
    Salvar Registro |${dados}[MensagemProdMestre]| |${dados}[MensagemDuplicidade]| |${dados}[MensagemSalvar]|
