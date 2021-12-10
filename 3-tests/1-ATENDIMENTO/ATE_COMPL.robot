#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Diagnóstico do Atendimento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\ATE_COMPL.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\ATE_COMPL.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\ATE_COMPL.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\ATE_COMPL.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/ATE_COMPL_STEPS.robot
Resource            ../../1-resources/1-ATENDIMENTO/M_CANCELA_DIAGNOSTICO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            ate_compl
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AATECOMPL-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AATECOMPL-001:Fluxo Principal" -d ./5-results/SCR1AATECOMPL-001 "3-tests/1-ATENDIMENTO/ATE_COMPL.robot"
# robot -v browser:firefox -t "SCR1AATECOMPL-001:Fluxo Principal" -d ./5-results/SCR1AATECOMPL-001 "3-tests/1-ATENDIMENTO/ATE_COMPL.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AATECOMPL-001"
    Acessar a tela "Atendimento>Urgência e Emergência>Atendimento>Diagnóstico do Atendimento>Confirmação"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Campo Atendimento |${dados}[NumAtendimento]|
    Validar Dados Apos Selecao do Atendimento |${dados}[CdPaciente]| |${dados}[NomePaciente]| |${dados}[UnidInternacao]| |${dados}[Prestador]|
    Preencher Campos Obrigatórios |${dados}[CID]| |${dados}[TpDoenca]| |${dados}[TempoDoenca]| |${dados}[DiasDoenca]| |${dados}[Resultado]| |${dados}[Descricao]|
    Confirmar Diagnostico |${dados}[MensagemProcesso]| |${dados}[MensagemConfirmacao]|
    # Retornar massa de dados ao ponto incial do teste
    Cancelamento Diagnostico
