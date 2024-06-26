#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Saída para setor
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SAI_SETOR.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SAI_SETOR.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SAI_SETOR.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SAI_SETOR.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/8-SERVICO_APOIO/M_SAI_SETOR_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_sai_setor
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SMSAISETOR-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SMSAISETOR-001:Fluxo Principal" -d ./5-results/SCR8SMSAISETOR-001 "3-tests/8-SERVICO_APOIO/M_SAI_SETOR.robot"
# robot -v browser:firefox -t "SCR8SMSAISETOR-001:Fluxo Principal" -d ./5-results/SCR8SMSAISETOR-001 "3-tests/8-SERVICO_APOIO/M_SAI_SETOR.robot"
    #${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMSAISETOR-001"
    Acessar a tela "Serviços de Apoio>Lavanderia e Rouparia>Movimentações>Saídas para Setor"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Campos de Saida para Setor |${dados}[Estoque]| |${dados}[UndInter]|
    Validar Preenchimento dos Dados |${dados}[UndInter]| |${dados}[CdUndInter]|
    Preencher Informacoes do Item |${dados}[Peca]| |${dados}[Quantidade]|
    Clicar Botao Salvar
    Validar Mensagem de Sucesso |${dados}[MensagemEsperada]|