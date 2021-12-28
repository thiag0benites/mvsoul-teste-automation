#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Gerenciamento de Higienizações de Leitos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_PROT_RECEB.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_PROT_RECEB.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_PROT_RECEB.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_PROT_RECEB.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/8-SERVICO_APOIO/M_PROT_RECEB_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_PROT_RECEB
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SMPROTRECEB-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SMPROTRECEB-001:Fluxo Principal" -d ./5-results/SCR8SMPROTRECEB-001 "3-tests/8-SERVICO_APOIO/M_PROT_RECEB.robot"
# robot -v browser:firefox -t "SCR8SMPROTRECEB-001:Fluxo Principal" -d ./5-results/SCR8SMPROTRECEB-001 "3-tests/8-SERVICO_APOIO/M_PROT_RECEB.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMPROTRECEB-001"
    #Acessar a tela "Serviços de Apoio>Movimentação de Documentos>Manutenção>Protocolação de Documentos>Baixa de Documentos"@nprint @las
    Acessar a tela pela busca |M_PROT_RECEB||Baixa de Documentos| @las
    Validar Acesso a Tela |Baixa de Documentos|
    Selecionar Protocolo |${dados}[Protocolo]|
    Marcar Recebimento
    Salvar e Validar |${dados}[MensagemEsperada]|
