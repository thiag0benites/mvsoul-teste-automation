#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Esterilização
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_MVTO_ESTERILIZACAO.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_MVTO_ESTERILIZACAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_MVTO_ESTERILIZACAO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_MVTO_ESTERILIZACAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/M_MVTO_ESTERILIZACAO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_mvto_esterilizacao
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMMVTOESTERILIZACAO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MMMVTOESTERILIZACAO-001:Fluxo Principal" -d ./5-results/SCR4MMMVTOESTERILIZACAO-001 "3-tests/4-MATERIAIS/M_MVTO_ESTERILIZACAO.robot"
# robot -v browser:firefox -t "SCR4MMMVTOESTERILIZACAO-001:Fluxo Principal" -d ./5-results/SCR4MMMVTOESTERILIZACAO-001 "3-tests/4-MATERIAIS/M_MVTO_ESTERILIZACAO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMMVTOESTERILIZACAO-001"
    #Acessar a tela "Serviços de Apoio>Central de Materiais Esterilizados>Movimentações>Esterilização"@nprint @las
    Acessa a Tela Pela Busca |M_MVTO_ESTERILIZACAO||Esterilização| @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Enviar para Esterilizacao |${dados}[MaqEsterilizadora]| |${dados}[TpEsterilizacao]| |${dados}[TpInstrumental]|
    Confirmar Esterilizacao |${dados}[MsgConfEsterilizacao]|
    Iniciar Esterilizacao |${dados}[MsgIniciarEsterilizacao]|
    Finalizar Testes |${dados}[TesteFisico]| |${dados}[TesteBiologico]| |${dados}[TesteQuimico]| |${dados}[LoteBiologico]| |${dados}[ObsBiologico]| |${dados}[LoteQuimico]| |${dados}[ObsQuimico]| |${dados}[MsgFinalizarTestes]| |${dados}[MsgImprimirEtiqueta]| |${dados}[NaoConforme]|
    Disponibilizar Para Arsenal |${dados}[MsgDispArsenal]| |${dados}[MsgConsulta]|


