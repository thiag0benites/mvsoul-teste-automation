#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela    Configuração do Sistema Contábil
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\CONFIG_FCCT.robot"
# firefox: robot -v browser:firefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\CONFIG_FCCT.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\CONFIG_FCCT.robot"
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


