#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Ficha Nutricional de Pacientes
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_FICHA_NUTRICAO.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_FICHA_NUTRICAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_FICHA_NUTRICAO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_FICHA_NUTRICAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/M_FICHA_NUTRICAO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_ficha_nutricao
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SMFICHANUTRICAO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SMFICHANUTRICAO-001:Fluxo Principal" -d ./5-results/SCR8SMFICHANUTRICAO-001 "3-tests/8-SERVICO_APOIO/M_FICHA_NUTRICAO.robot"
# robot -v browser:firefox -t "SCR8SMFICHANUTRICAO-001:Fluxo Principal" -d ./5-results/SCR8SMFICHANUTRICAO-001 "3-tests/8-SERVICO_APOIO/M_FICHA_NUTRICAO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMFICHANUTRICAO-001"
    Acessar a tela "Serviços de Apoio>Nutrição e Dietética>Movimentação>Ficha Nutricional de Pacientes"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Pesquisar Atendimento |${dados}[Atendimento]|
    Validar Consulta Realizada |${dados}[Paciente]| |${dados}[UnidInternacao]| |${dados}[TpDieta]|
    Adicionar Observacoes |${dados}[TpRefeicao]| |${dados}[Observacao]|
    Clicar Botao Salvar |${dados}[MensagemSucesso]|
    # Retornar massa de dados para status inicial
    Excluir Observacao
    Clicar Botao Salvar |${dados}[MensagemSucesso]|
  
