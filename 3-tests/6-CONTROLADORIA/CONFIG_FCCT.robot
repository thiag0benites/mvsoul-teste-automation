#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela    Configuração do Sistema Contábil
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\CONFIG_FCCT.robot"
# firefox: robot -v browser:firefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\CONFIG_FCCT.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\CONFIG_FCCT.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\CONFIG_FCCT.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/6-CONTROLADORIA/CONFIG_FCCT_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          CONFIG_FCCT
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6MCONFIGFCCT-001:Fluxo Principal
# robot -v browser:chrome -t "SCR6MCONFIGFCCT-001:Fluxo Principal" -d ./5-results/SCR6MCONFIGFCCT-001 "3-tests/6-CONTROLADORIA/CONFIG_FCCT.robot"
# robot -v browser:firefox -t "SCR6MCONFIGFCCT-001:Fluxo Principal" -d ./5-results/SCR6MCONFIGFCCT-001 "3-tests/6-CONTROLADORIA/CONFIG_FCCT.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6MCONFIGFCCT-001"
    #Acessar a tela "Controladoria>Contabilidade>Configuração>Contabilidade"@nprint @las
    Acessa a Tela Pela Busca |CONFIG_FCCT||Contabilidade| @las
    Testar Botoes do Bloco Financeiro
    Testar Botoes do Bloco Caixa
    Testar Botoes do Bloco Estoque
    Selecionar Filtro Relatorio |${dados}[FiltroRelatorio]|
    Testar Botoes do Bloco Faturamento
    Testar Botoes do Bloco Contabilidade |${dados}[MensagemAlerta]|
    Validar Lotes Integrados |${dados}[LotesIntegrados]|
    Alterar Campos Contabil do Faturamento |${dados}[CargaFamiliar]| |${dados}[RetencaoJudicial]| |${dados}[TipoAtendimento]| |${dados}[OrigAtend]| |${dados}[TipoAcomodacao]| |${dados}[TipoContaEnvio]| |${dados}[GrupoProcedimento]| |${dados}[GrupoFaturamento]| |${dados}[Procedimento]| |${dados}[HorarioEspecial]| |${dados}[TipDesconto]| |${dados}[PlanoContas]| |${dados}[ItemPres]|
    Salvar Registro |${dados}[MsgSalvo]|

SCR6MCONFIGFCCT-002:Contabilizacao de Glosas
# robot -v browser:chrome -t "SCR6MCONFIGFCCT-002:Contabilizacao de Glosas" -d ./5-results/SCR6MCONFIGFCCT-002 "3-tests/6-CONTROLADORIA/CONFIG_FCCT.robot"
# robot -v browser:firefox -t "SCR6MCONFIGFCCT-002:Contabilizacao de Glosas" -d ./5-results/SCR6MCONFIGFCCT-002 "3-tests/6-CONTROLADORIA/CONFIG_FCCT.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6MCONFIGFCCT-002"
    #Acessar a tela "Controladoria>Contabilidade>Configuração>Contabilidade"@nprint @las
    Acessa a Tela Pela Busca |CONFIG_FCCT||Contabilidade| @las
    Testar Bloco Principal
    Testar Bloco Eventos de Contabilizacao de Glosas
    Testar Bloco Sistema de Auditoria de Glosas
    Salvar Registro |${dados}[MsgSalvo]|

SCR6MCONFIGFCCT-003:Contabilizacao de Pacotes
# robot -v browser:chrome -t "SCR6MCONFIGFCCT-003:Contabilizacao de Pacotes" -d ./5-results/SCR6MCONFIGFCCT-003 "3-tests/6-CONTROLADORIA/CONFIG_FCCT.robot"
# robot -v browser:firefox -t "SCR6MCONFIGFCCT-003:Contabilizacao de Pacotes" -d ./5-results/SCR6MCONFIGFCCT-003 "3-tests/6-CONTROLADORIA/CONFIG_FCCT.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6MCONFIGFCCT-003"
    #Acessar a tela "Controladoria>Contabilidade>Configuração>Contabilidade"@nprint @las
    Acessa a Tela Pela Busca |CONFIG_FCCT||Contabilidade| @las
    Preencher Eventos de Contabilizacao |${dados}[ContCred]| |${dados}[ContCred]| |${dados}[ContCaixa]|
    Salvar Registro |${dados}[MsgSalvo]|

SCR6MCONFIGFCCT-004:Expiracao das Telas
# robot -v browser:chrome -t "SCR6MCONFIGFCCT-004:Expiracao das Telas" -d ./5-results/SCR6MCONFIGFCCT-004 "3-tests/6-CONTROLADORIA/CONFIG_FCCT.robot"
# robot -v browser:firefox -t "SCR6MCONFIGFCCT-004:Expiracao das Telas" -d ./5-results/SCR6MCONFIGFCCT-004 "3-tests/6-CONTROLADORIA/CONFIG_FCCT.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6MCONFIGFCCT-004"
    #Acessar a tela "Controladoria>Contabilidade>Configuração>Contabilidade"@nprint @las
    Acessa a Tela Pela Busca |CONFIG_FCCT||Contabilidade| @las
    Preencher Tempo de Expiracao |${dados}[Tela]| |${dados}[Tempo]|
    Salvar Registro |${dados}[MsgSalvo]|

SCR6MCONFIGFCCT-005:Historico
# robot -v browser:chrome -t "SCR6MCONFIGFCCT-005:Historico" -d ./5-results/SCR6MCONFIGFCCT-005 "3-tests/6-CONTROLADORIA/CONFIG_FCCT.robot"
# robot -v browser:firefox -t "SCR6MCONFIGFCCT-005:Historico" -d ./5-results/SCR6MCONFIGFCCT-005 "3-tests/6-CONTROLADORIA/CONFIG_FCCT.robot"
    #${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6MCONFIGFCCT-005"
    #Acessar a tela "Controladoria>Contabilidade>Configuração>Contabilidade"@nprint @las
    Acessa a Tela Pela Busca |CONFIG_FCCT||Contabilidade| @las
    Consultar Historico de Alteracoes
