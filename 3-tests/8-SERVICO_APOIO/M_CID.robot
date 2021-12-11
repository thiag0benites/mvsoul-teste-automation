#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Cadastro de CID
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_CID.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_CID.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_CID.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_CID.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/M_CID_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_cid
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SMCID-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SMCID-001:Fluxo Principal" -d ./5-results/SCR8SMCID-001 "3-tests/8-SERVICO_APOIO/M_CID.robot"
# robot -v browser:firefox -t "SCR8SMCID-001:Fluxo Principal" -d ./5-results/SCR8SMCID-001 "3-tests/8-SERVICO_APOIO/M_CID.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMCID-001"
    Acessar a tela "Serviços de Apoio>Global>Globais>CID"@nprint @las
    Preencher Bloco Capitulo |${dados}[CdCodigo]| |${dados}[DescCID]| |${dados}[GOInicial]| |${dados}[GOFinal]| |${dados}[Idioma]| |${dados}[GO]| |${dados}[MensagemSucesso]|
    Pesquisar CID Criado |${dados}[DescCID]|
    Preencher Bloco Categoria |${dados}[CdCategoria]| |${dados}[DescCategoria]|
    Preencher Bloco Categoria CID-0 |${dados}[CdCategoria]| |${dados}[MensagemSucesso]|
    Preencher Bloco CID |${dados}[CdCID]| |${dados}[DescricaoCID]|
    Preencher Bloco CID-0 |${dados}[CdCID]| |${dados}[MensagemSucesso]|
    # Retornar massa de dados para status inicial do teste
    Excluir CID Criado |${dados}[DescCID]| |${dados}[MensagemSucesso]|

