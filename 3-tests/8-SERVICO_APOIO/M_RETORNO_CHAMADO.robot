#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Retorno de Chamados
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_RETORNO_CHAMADO.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_RETORNO_CHAMADO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_RETORNO_CHAMADO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_RETORNO_CHAMADO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/M_RETORNO_CHAMADO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_RETORNO_CHAMADO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SMRETORNOCHAMADO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SMRETORNOCHAMADO-001:Fluxo Principal" -d ./5-results/SCR8SMRETORNOCHAMADO-001 "3-tests/8-SERVICO_APOIO/M_RETORNO_CHAMADO.robot"
# robot -v browser:firefox -t "SCR8SMRETORNOCHAMADO-001:Fluxo Principal" -d ./5-results/SCR8SMRETORNOCHAMADO-001 "3-tests/8-SERVICO_APOIO/M_RETORNO_CHAMADO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMRETORNOCHAMADO-001"
    Acessar a tela "Serviços de Apoio>Serviço Atendimento Cliente>Atendimento>Resposta de Solicitação de Parecer" @las
    Validar Acesso a Tela |Retorno de Chamados|
    
    Clicar na Aba Parecer e Preencher resposta |${dados}[Resposta]|
    Marcar como Respondido e Validar |${dados}[MsgSalva]|