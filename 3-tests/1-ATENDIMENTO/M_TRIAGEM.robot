#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Triagem de Paciente
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_TRIAGEM.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_TRIAGEM.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_TRIAGEM.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_TRIAGEM.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/M_TRIAGEM_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_triagem
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMTRIAGEM-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMTRIAGEM-001:Fluxo Principal" -d ./5-results/SCR1AMTRIAGEM-001 "3-tests/1-ATENDIMENTO/M_TRIAGEM.robot"
# robot -v browser:firefox -t "SCR1AMTRIAGEM-001:Fluxo Principal" -d ./5-results/SCR1AMTRIAGEM-001 "3-tests/1-ATENDIMENTO/M_TRIAGEM.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMTRIAGEM-001"
    Acessar a tela "Atendimento>Urgência e Emergência>Atendimento>Triagem"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Pesquisar Paciente |${dados}[CdPaciente]| |${dados}[MsgAtendimento]|
    Preencher Campos Admissao |${dados}[QueixaPrincipal]|
    Preencher Campos Doencas Cronicas e Alergias |${dados}[Diabetes]| |${dados}[Asma]|
    Preencher Campos Sinais Vitais |${dados}[PAInicial]| |${dados}[PAFinal]| |${dados}[Pulso]| |${dados}[Temperatura]|
    Clicar Botao Salvar
    # Retornar massa de dados para status inicial do teste
    Excluir Dados de Triagem