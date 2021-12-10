#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Abertura de Chamado
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\C_SOLICITACAO.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\C_SOLICITACAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\C_SOLICITACAO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\C_SOLICITACAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/C_SOLICITACAO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          c_solicitacao
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SCSOLICITACAO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SCSOLICITACAO-001:Fluxo Principal" -d ./5-results/SCR8SCSOLICITACAO-001 "3-tests/8-SERVICO_APOIO/C_SOLICITACAO.robot"
# robot -v browser:firefox -t "SCR8SCSOLICITACAO-001:Fluxo Principal" -d ./5-results/SCR8SCSOLICITACAO-001 "3-tests/8-SERVICO_APOIO/C_SOLICITACAO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SCSOLICITACAO-001"
    Acessar a tela "Serviços de Apoio>Serviço Atendimento Cliente>Atendimento>Abertura de Chamados"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Dados do Solicitante |${dados}[Origem]| |${dados}[Setor]| |${dados}[Nome]| |${dados}[Identidade]|
    Preencher Descricao do Chamado |${dados}[TpChamado]| |${dados}[DescNvChamado]| |${dados}[MeioDoChamado]| |${dados}[HrContato]| |${dados}[Observacao]| |${dados}[TelaConsultaAtend]| |${dados}[Descricao]]|
    Clicar Botao Salvar |${dados}[MensagemSucesso]|
    Sleep  5