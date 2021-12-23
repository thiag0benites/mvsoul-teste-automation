#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Exclusão de Pedido de Exames
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_EXC_PED_RX.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_EXC_PED_RX.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_EXC_PED_RX.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_EXC_PED_RX.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/2-ASSISTENCIAL/M_EXC_PED_RX_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_exc_ped_rx
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMEXCPEDRX-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMEXCPEDRX-001:Fluxo Principal" -d ./5-results/SCR2AMEXCPEDRX-001 "3-tests/2-ASSISTENCIAL/M_EXC_PED_RX.robot"
# robot -v browser:firefox -t "SCR2AMEXCPEDRX-001:Fluxo Principal" -d ./5-results/SCR2AMEXCPEDRX-001 "3-tests/2-ASSISTENCIAL/M_EXC_PED_RX.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMEXCPEDRX-001"
    Acessa a Tela Pela Busca |M_EXC_PED_RX||Pedido de Exames| @las
    #Acessar a tela "Diagnostico e Terapia>Diagnóstico por Imagem>Atendimentos>Exclusões>Pedido de Exames"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Dados do Pedido |${dados}[Pedido]| |${dados}[Paciente]| |${dados}[Motivo]|
    Excluir Pedido |${dados}[MensagemConfirmaExclusao]| |${dados}[MensagemExclusaoSucesso]|
