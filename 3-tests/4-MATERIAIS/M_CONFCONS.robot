#################################################################################################################################################################
# Autor: Gabriel Passos
# Decrição: Testes da tela M_CONFCONS
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_CONFCONS "3-tests\4-MATERIAIS\M_CONFCONS.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_CONFCONS "3-tests\4-MATERIAIS\M_CONFCONS.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_CONFCONS.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_CONFCONS.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource    ../../1-resources/4-MATERIAIS/M_CONFCONS_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}    m_confcons
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMCONFCONS-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MMCONFCONS-001:Fluxo Principal" -d ./5-results/SCR4MMCONFCONS-001 "3-tests/4-MATERIAIS/M_CONFCONS.robot"
# robot -v browser:firefox -t "SCR4MMCONFCONS-001:Fluxo Principal" -d ./5-results/SCR4MMCONFCONS-001 "3-tests/4-MATERIAIS/M_CONFCONS.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMCONFCONS-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Movimentações>Confirmação do Consumo do OPME"@nprint @nlas
    Gerar a lista para confirmacao de consumo
    Realizar o cancelamento do consumo
    Valida notificacao pop-up com botao|${dados}[msgConfCancelSucesso]|[OK]