#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Tela de consulta de CEPs e Endereços
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_CONSULTA_CEP_ECT.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_CONSULTA_CEP_ECT.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_CONSULTA_CEP_ECT.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_CONSULTA_CEP_ECT.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/C_CONSULTA_CEP_ECT_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            c_consulta_cep_ect
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1ACCONSULTACEPECT-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1ACCONSULTACEPECT-001:Fluxo Principal" -d ./5-results/SCR1ACCONSULTACEPECT-001 "3-tests/1-ATENDIMENTO/C_CONSULTA_CEP_ECT.robot"
# robot -v browser:firefox -t "SCR1ACCONSULTACEPECT-001:Fluxo Principal" -d ./5-results/SCR1ACCONSULTACEPECT-001 "3-tests/1-ATENDIMENTO/C_CONSULTA_CEP_ECT.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1ACCONSULTACEPECT-001"
    Acessar a tela "Atendimento>Internação>Atendimento>Cadastro de Paciente"@nprint @las
    Acessar a tela C_CONSULTA_CEP_ECT |${dados}[NomeTela]|
    Realizar Pesquisa por |Logradouro| |${dados}[Logradouro]| |${dados}[Cidade]| |${dados}[CEP]|
    Realizar Pesquisa por |Cidade| |${dados}[Logradouro]| |${dados}[Cidade]| |${dados}[CEP]|
    Realizar Pesquisa por |CEP| |${dados}[Logradouro]| |${dados}[Cidade]| |${dados}[CEP]|
    Sleep  5

