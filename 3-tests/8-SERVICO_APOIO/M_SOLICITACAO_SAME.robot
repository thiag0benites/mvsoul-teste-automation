#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Teste da tela Solicitação de Documentos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SOLICITACAO_SAME.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SOLICITACAO_SAME.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SOLICITACAO_SAME.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SOLICITACAO_SAME.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/8-SERVICO_APOIO/M_SOLICITACAO_SAME_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
#${suite}            m_solicitacao_same
# Recebe dados do gerenciador
#${dados}

*** Test Case ***
SCR8SMSOLICITACAOSAME-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SMSOLICITACAOSAME-001:Fluxo Principal" -d ./5-results/SCR8SMSOLICITACAOSAME-001 "3-tests/8-SERVICO_APOIO/M_SOLICITACAO_SAME.robot"
# robot -v browser:firefox -t "SCR8SMSOLICITACAOSAME-001:Fluxo Principal" -d ./5-results/SCR8SMSOLICITACAOSAME-001 "3-tests/8-SERVICO_APOIO/M_SOLICITACAO_SAME.robot"
    #${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMSOLICITACAOSAME-001"
    Acessa a Tela Pela Busca |M_SOLICITACAO_SAME||Solicitação de Documentos| @las
    Escolha o motivo da solicitacao
    Escolha o destino da solicitacao
    Escolha a origem da solicitacao
    Preencha o atendimento
    #Clicar em Salvar