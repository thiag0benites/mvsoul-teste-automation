#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Alteração da Senha de Acesso
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/7-APOIO_TI "3-tests/7-APOIO_TI/ALT_SENHA.robot"
# firefox: robot -v browser:firefox -d ./5-results/7-APOIO_TI "3-tests/7-APOIO_TI/ALT_SENHA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/7-APOIO_TI "3-tests/7-APOIO_TI/ALT_SENHA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/7-APOIO_TI "3-tests/7-APOIO_TI/ALT_SENHA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/7-APOIO_TI/ALT_SENHA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            alt_senha
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR7AALTSENHA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR7AALTSENHA-001:Fluxo Principal" -d ./5-results/SCR7AALTSENHA-001 "3-tests/7-APOIO_TI/ALT_SENHA.robot"
# robot -v browser:firefox -t "SCR7AALTSENHA-001:Fluxo Principal" -d ./5-results/SCR7AALTSENHA-001 "3-tests/7-APOIO_TI/ALT_SENHA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR7AALTSENHA-001"
    Acessar a tela "Apoio a TI>Gestão de Usuários>Autorização>Alteração de Senha"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Usuario e Senha
    Confirmar Alteracao da Senha