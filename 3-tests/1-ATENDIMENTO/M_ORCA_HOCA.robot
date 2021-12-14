#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Orçamento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_ORCA_HOCA.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_ORCA_HOCA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_ORCA_HOCA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_ORCA_HOCA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/M_ORCA_HOCA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_orca_hoca
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMORCAHOCA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMORCAHOCA-001:Fluxo Principal" -d ./5-results/SCR1AMORCAHOCA-001 "3-tests/1-ATENDIMENTO/M_ORCA_HOCA.robot"
# robot -v browser:firefox -t "SCR1AMORCAHOCA-001:Fluxo Principal" -d ./5-results/SCR1AMORCAHOCA-001 "3-tests/1-ATENDIMENTO/M_ORCA_HOCA.robot"
    #${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMORCAHOCA-001"
    Acessar a tela "Atendimento>Internação Domiciliar (Home Care)>Recepção>Orçamento>Cadastro do Orçamento"@nprint @las
    Validar Acesso a Tela |Orçamento|
    Preencher Dados do Orcamento
    Preencher Campos Aba Procedimento
    Preencher Campos Aba Custos
    Validar Informacao Aba Impostos
    Salvar Orcamento
    Sleep  5
    
