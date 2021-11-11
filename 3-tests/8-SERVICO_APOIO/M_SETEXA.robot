#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Setores de Exames
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SETEXA.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SETEXA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SETEXA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SETEXA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/8-SERVICO_APOIO/M_SETEXA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_setexa
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SMSETEXA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SMSETEXA-001:Fluxo Principal" -d ./5-results/SCR8SMSETEXA-001 "3-tests/8-SERVICO_APOIO/M_SETEXA.robot"
# robot -v browser:firefox -t "SCR8SMSETEXA-001:Fluxo Principal" -d ./5-results/SCR8SMSETEXA-001 "3-tests/8-SERVICO_APOIO/M_SETEXA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMSETEXA-001"
    Acessa a Tela Pela Busca |M_SETEXA||Setores de Exames| @las
    #Acessar a tela "Serviços de Apoio>Global>Globais>Setores de exames"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Campos Obrigatorios
    Validar Preenchimento dos Campos
    Clicar Botao Salvar
