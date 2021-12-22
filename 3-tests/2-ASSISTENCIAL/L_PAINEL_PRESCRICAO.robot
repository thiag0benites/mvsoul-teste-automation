#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Alteração de Atendimento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\L_PAINEL_PRESCRICAO.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\L_PAINEL_PRESCRICAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\L_PAINEL_PRESCRICAO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\L_PAINEL_PRESCRICAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/2-ASSISTENCIAL/L_PAINEL_PRESCRICAO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          l_painel_prescricao
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2ALPAINELPRESCRICAO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2ALPAINELPRESCRICAO-001:Fluxo Principal" -d ./5-results/SCR2ALPAINELPRESCRICAO-001 "3-tests/2-ASSISTENCIAL/L_PAINEL_PRESCRICAO.robot"
# robot -v browser:firefox -t "SCR2ALPAINELPRESCRICAO-001:Fluxo Principal" -d ./5-results/SCR2ALPAINELPRESCRICAO-001 "3-tests/2-ASSISTENCIAL/L_PAINEL_PRESCRICAO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2ALPAINELPRESCRICAO-001"
    Acessa a Tela Pela Busca |L_PAINEL_PRESCRICAO||Painel de Prescrições| @las
    #Acessar a tela "Clínica e Assistencial>Gerenciamento de Unidades>Consultas>Prescrições Médicas>Painel de Prescrições"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Realizar Pesquisa por |Setor| |${dados}[Setor]| || || |${dados}[AtendSetor]| |${dados}[PacSetor]| |${dados}[DtHrSetor]| ||
    Realizar Pesquisa por |Processo| || |${dados}[Processo]| || || || || |${dados}[MensagemEsperada]|
    Realizar Pesquisa por |Atendimento| || || |${dados}[AtendimentoPesquisa]| |${dados}[AtendAtend]| |${dados}[PacAtend]| |${dados}[DtHrAtend]| ||
