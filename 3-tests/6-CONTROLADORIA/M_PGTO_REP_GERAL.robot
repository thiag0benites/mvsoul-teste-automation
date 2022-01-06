#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_PGTO_REP_GERAL "3-tests\6-CONTROLADORIA\M_PGTO_REP_GERAL.robot"
# chrome:         robot -v browser:firefox -d ./5-results/M_PGTO_REP_GERAL "3-tests\6-CONTROLADORIA\M_PGTO_REP_GERAL.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_PGTO_REP_GERAL "3-tests\6-CONTROLADORIA\M_PGTO_REP_GERAL.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_PGTO_REP_GERAL "3-tests\6-CONTROLADORIA\M_PGTO_REP_GERAL.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/6-CONTROLADORIA/M_PGTO_REP_GERAL_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}        m_pagto_rep_geral
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-7788:Pagamento a Todos os Prestadores
# robot -v browser:chrome -t "SMF-7788:Pagamento a Todos os Prestadores" -d ./5-results/SMF-7788 "3-tests/6-CONTROLADORIA/M_PGTO_REP_GERAL.robot"
# robot -v browser:firefox -t "SMF-7788:Pagamento a Todos os Prestadores" -d ./5-results/SMF-7788 "3-tests/6-CONTROLADORIA/M_PGTO_REP_GERAL.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-7788"
    Acessar a tela "Controladoria>Repasse Médico>Repasse>Pagamento Geral"@print @las
    Preenche Periodo Pagto e Consulta "Competencia|${dados}[Competencia]|"
    Preencher Pagto Atual "Msg Imprimir|${dados}[MsgImprimir]|"
    



