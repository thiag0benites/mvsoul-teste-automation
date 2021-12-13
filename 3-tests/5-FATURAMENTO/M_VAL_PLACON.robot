#################################################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Este caso de teste tem como objetivo, Configurar as regras de alocação dentro dos Centros de Serviços Compartilhados
# permitindo      a medição do volume de atividades e/ou serviços compartilhados de centros de custos, que podem ser absorvidos em uma empresa da mesma organização
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -t "SCR5FMVALPLACON-001:Excecoes dos Valores de Convenios e Planos" -d ./5-results/SCR5FMVALPLACON-001 "3-tests/5-FATURAMENTO/M_VAL_PLACON.robot"
# firefox: robot -v browser:firefox -t "SCR5FMVALPLACON-001:Excecoes dos Valores de Convenios e Planos" -d ./5-results/SCR5FMVALPLACON-001 "3-tests/5-FATURAMENTO/M_VAL_PLACON.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR5FMVALPLACON-001 "3-tests/5-FATURAMENTO/M_VAL_PLACON.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR5FMVALPLACON-001 "3-tests/5-FATURAMENTO/M_VAL_PLACON.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/5-FATURAMENTO/M_VAL_PLACON_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessao
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_VAL_PLACON
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMVALPLACON-001:Excecoes dos Valores de Convenios e Planos
# robot -v browser:chrome -t "SCR5FMVALPLACON-001:Excecoes dos Valores de Convenios e Planos" -d ./5-results/SCR5FMVALPLACON-001 "3-tests/5-FATURAMENTO/M_VAL_PLACON.robot"
# robot -v browser:firefox -t "SCR5FMVALPLACON-001:Excecoes dos Valores de Convenios e Planos" -d ./5-results/SCR5FMVALPLACON-001    "3-tests/5-FATURAMENTO/M_VAL_PLACON.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMVALPLACON-001"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Gerais>Valores dos Procedimentos>Exceções de Convênios e Planos"@nprint @las
    Validar Acesso a Tela |${dados}[nomeTela]|
    Preencher Excecoes do valores |${dados}[convenio]|, |${dados}[procedimentos]|, |${dados}[vigencia]|, |${dados}[valor]|
    Validar Campos |${dados}[convenio]|, |${dados}[procedimentos]|, |${dados}[vigencia]|, |${dados}[valor]|
    Salvar e validar mensagem de sucesso |${dados}[mensagemSucesso]|