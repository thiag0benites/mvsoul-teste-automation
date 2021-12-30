#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Alteração de Atendimento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_PED_RX_CENTRALIZADA.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_PED_RX_CENTRALIZADA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_PED_RX_CENTRALIZADA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_PED_RX_CENTRALIZADA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/2-ASSISTENCIAL/M_PED_RX_CENTRALIZADA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_ped_rx_centralizada
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMPEDRXCENTRALIZADA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMPEDRXCENTRALIZADA-001:Fluxo Principal" -d ./5-results/SCR2AMPEDRXCENTRALIZADA-001 "3-tests/2-ASSISTENCIAL/M_PED_RX_CENTRALIZADA.robot"
# robot -v browser:firefox -t "SCR2AMPEDRXCENTRALIZADA-001:Fluxo Principal" -d ./5-results/SCR2AMPEDRXCENTRALIZADA-001 "3-tests/2-ASSISTENCIAL/M_PED_RX_CENTRALIZADA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMPEDRXCENTRALIZADA-001"
    Acessar a tela "Diagnostico e Terapia>Diagnóstico por Imagem>Atendimentos>Recepção Centralizada de Imagem"@nprint @las
    Selecionar Paciente |${dados}[Atendimento]| |${dados}[MensagemPaciente]| |${dados}[Paciente]| |${dados}[Convenio]|
    Preencher Dados do Exame |${dados}[SetorExec]| |${dados}[MedicoExec]| |${dados}[Exame]| |${dados}[MensagemExame]|
    Preencher Dados da Solicitacao |${dados}[MedicoSolic]| |${dados}[SetorSolic]| |${dados}[DtSolicitacao]| |${dados}[DtAutorizacao]| |${dados}[DtValidade]|
    Clicar Botao Salvar |${dados}[MensagemSucesso]|
