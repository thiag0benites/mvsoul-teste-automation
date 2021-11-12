#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Cadastro de Centro de Custo
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_CENTRO_CUSTO.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_CENTRO_CUSTO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_CENTRO_CUSTO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_CENTRO_CUSTO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/8-SERVICO_APOIO/M_CENTRO_CUSTO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_centro_custo
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SMCENTROCUSTO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SMCENTROCUSTO-001:Fluxo Principal" -d ./5-results/SCR8SMSETEXA-001 "3-tests/8-SERVICO_APOIO/M_CENTRO_CUSTO.robot"
# robot -v browser:firefox -t "SCR8SMCENTROCUSTO-001:Fluxo Principal" -d ./5-results/SCR8SMSETEXA-001 "3-tests/8-SERVICO_APOIO/M_CENTRO_CUSTO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMCENTROCUSTO-001"
    Acessar a tela "Serviços de Apoio>Global>Globais>Centro de Custo"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Adicionar Novo Centro
    Preencher Campos do Centro de Custo |${dados}[Setor]| |${dados}[CentroCusto]| |${dados}[DescricaoCentroCusto]| |${dados}[CdGrupoCusto]|
    Validar Preenchimento dos Campos |${dados}[Setor]| |${dados}[CentroCusto]| |${dados}[DescricaoCentroCusto]| |${dados}[GrupoCusto]|
    Clicar Botao Salvar
    ### Keyword para retornar massa de dados para status inicial do teste ###
    Excluir Centro de Custo Criado |${dados}[Setor]| |${dados}[CentroCusto]| |${dados}[DescricaoCentroCusto]| |${dados}[GrupoCusto]|
