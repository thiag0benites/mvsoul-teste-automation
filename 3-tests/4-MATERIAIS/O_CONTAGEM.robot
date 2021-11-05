#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Digitação dos Produtos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\O_CONTAGEM.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\O_CONTAGEM.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\O_CONTAGEM.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\O_CONTAGEM.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../2-pages/4-MATERIAIS/O_CONTAGEM_PAGE.robot
Resource            ../../1-resources/4-MATERIAIS/O_CONTAGEM_STEPS.robot
Resource            ../../Config.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            o_contagem
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MOCONTAGEM-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MOCONTAGEM-001:Fluxo Principal" -d ./5-results/SCR4MOCONTAGEM-001 "3-tests/4-MATERIAIS/O_CONTAGEM.robot"
# robot -v browser:firefox -t "SCR4MOCONTAGEM-001:Fluxo Principal" -d ./5-results/SCR4MOCONTAGEM-001 "3-tests/4-MATERIAIS/O_CONTAGEM.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MOCONTAGEM-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Inventário>Digitação dos Produtos"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Realizar Consulta Pelo Codigo
    Inserir Produto |${dados}[Produto]|
    Clicar Botao Fechar Mov Usuario
