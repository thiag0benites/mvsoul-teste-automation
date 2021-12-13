#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Solicitações de Produtos ao Estoque
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_SOLSAIPRO.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_SOLSAIPRO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_SOLSAIPRO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_SOLSAIPRO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/4-MATERIAIS/M_SOLSAIPRO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_solsaipro
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMSOLSAIPRO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MMSOLSAIPRO-001:Fluxo Principal" -d ./5-results/SCR4MMSOLSAIPRO-001 "3-tests/4-MATERIAIS/M_SOLSAIPRO.robot"
# robot -v browser:firefox -t "SCR4MMSOLSAIPRO-001:Fluxo Principal" -d ./5-results/SCR4MMSOLSAIPRO-001 "3-tests/4-MATERIAIS/M_SOLSAIPRO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMSOLSAIPRO-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Solicitações>Produtos ao Estoque"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Selecionar Checkbox, Preencher Estoque e Setor |${dados}[Estoque]| |${dados}[Setor]|
    Preencher Produtos |${dados}[CdProduto]| |${dados}[QtdProduto]| |${dados}[NomeProduto]|
    Clicar Botao Salvar
    Nao Imprimir Solicitacao |${dados}[MensagemRecebidaConfirmacao]|
    Limpar Tela |${dados}[MensagemRecebidaLimpar]|