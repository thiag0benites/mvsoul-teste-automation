#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Teste da tela Agendamento Cirurgico
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\O_AGENDA.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\O_AGENDA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\O_AGENDA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\O_AGENDA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/O_AGENDA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
#Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          O_AGENDA
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-9623:Fluxo Principal
# robot -v browser:chrome -t "SMF-9623:Fluxo Principal" -d ./5-results/SMF-9623 "3-tests/1-ATENDIMENTO/O_AGENDA.robot"
# robot -v browser:firefox -t "SMF-9623:Fluxo Principal" -d ./5-results/SMF-9623 "3-tests/1-ATENDIMENTO/O_AGENDA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-9623"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Agendamento"@nprint @las
    Preencher Campos Centro Cirurgico |${dados}[centroCirurgico]|, sala |${dados}[sala]|, data |${dados}[dtHora]|, convenio |${dados}[convenio]|, plano |${dados}[plano]|, cirurgiao |${dados}[cirurgiao]|, medico associado |${dados}[medicoAssociado]|
    Clicar no botao[Agendar]
    # Clicar no botao[Sim]
    # Preencher Campos Cod paciente |${dados}[codPac]|, tipo acomodacao |${dados}[tpAcom]|, Unidade Internacao |${dados}[undInt]|, equipe medica |${dados}[eqpMed]|, anestesista |${dados}[anestesista]|, cid |${dados}[cid]|
    # Clicar no botao[Confirmar]
    # Clicar no botao[Nao]