#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Solicitação de Agendamento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_SOLIC_AGENDAMENTO.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_SOLIC_AGENDAMENTO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_SOLIC_AGENDAMENTO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_SOLIC_AGENDAMENTO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/M_SOLIC_AGENDAMENTO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_solic_agendamento
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMSOLICAGENDAMENTO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMSOLICAGENDAMENTO-001:Fluxo Principal" -d ./5-results/SCR1AMSOLICAGENDAMENTO-001 "3-tests/1-ATENDIMENTO/M_SOLIC_AGENDAMENTO.robot"
# robot -v browser:firefox -t "SCR1AMSOLICAGENDAMENTO-001:Fluxo Principal" -d ./5-results/SCR1AMSOLICAGENDAMENTO-001 "3-tests/1-ATENDIMENTO/M_SOLIC_AGENDAMENTO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMSOLICAGENDAMENTO-001"
    Acessa a Tela Pela Busca |M_SOLIC_AGENDAMENTO||Solicitação de Agendamento| @las
    #Acessar a tela "Atendimento>Central de Agendamento>Agendamentos>Solicitação de Agendamento"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Datas de Pesquisa |${dados}[DtInicial]| |${dados}[DtFinal]|
    Pesquisar Solicitacoes por Situacao |${dados}[Situacao1]|
    Pesquisar Solicitacoes por Situacao |${dados}[Situacao2]|
    Pesquisar Solicitacoes por Situacao |${dados}[Situacao3]|
    Pesquisar Solicitacoes por Situacao |${dados}[Situacao4]|


