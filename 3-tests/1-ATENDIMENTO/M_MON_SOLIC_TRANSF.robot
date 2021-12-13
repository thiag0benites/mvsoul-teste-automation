#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Monitoramento de Solicitações de Transferência
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_MON_SOLIC_TRANSF.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_MON_SOLIC_TRANSF.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_MON_SOLIC_TRANSF.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_MON_SOLIC_TRANSF.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/M_MON_SOLIC_TRANSF_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_mon_solic_transf
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMMONSOLICTRANSF-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMMONSOLICTRANSF-001:Fluxo Principal" -d ./5-results/SCR1AMMONSOLICTRANSF-001 "3-tests/1-ATENDIMENTO/M_MON_SOLIC_TRANSF.robot"
# robot -v browser:firefox -t "SCR1AMMONSOLICTRANSF-001:Fluxo Principal" -d ./5-results/SCR1AMMONSOLICTRANSF-001 "3-tests/1-ATENDIMENTO/M_MON_SOLIC_TRANSF.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMMONSOLICTRANSF-001"
    Acessar a tela "Atendimento>Internação>Atendimento>Transferência de Paciente>Solicitação de Transferência"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Validar Informacoes Apresentadas na Tela |${dados}[Paciente]| |${dados}[UnidInterAtual]| |${dados}[LeitoAtual]|
    Clicar Botao Detalhar |${dados}[TelaTransfPaciente]|
    Validar Dados da Transferencia |${dados}[Paciente]| |${dados}[UnidInterSolic]| |${dados}[MotivoTransf]|
    Clicar Botao Sair |${dados}[NomeTela]|