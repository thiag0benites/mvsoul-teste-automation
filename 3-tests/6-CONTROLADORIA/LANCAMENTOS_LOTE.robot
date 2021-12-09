#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/LANCAMENTOS_LOTE "3-tests\6-CONTROLADORIA\LANCAMENTOS_LOTE.robot"
# chrome:         robot -v browser:firefox -d ./5-results/LANCAMENTOS_LOTE "3-tests\6-CONTROLADORIA\LANCAMENTOS_LOTE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/LANCAMENTOS_LOTE "3-tests\6-CONTROLADORIA\LANCAMENTOS_LOTE.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/LANCAMENTOS_LOTE "3-tests\6-CONTROLADORIA\LANCAMENTOS_LOTE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/6-CONTROLADORIA/LANCAMENTOS_LOTE_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
# ${suite}          m_conpag_res
# Recebe dados do gerenciador
# ${dados}

*** Test Case ***
SMF-8723:Acesso a Abertura
# robot -v browser:chrome -t "SMF-8723:Acesso a Abertura" -d ./5-results/SMF-8723 "3-tests/6-CONTROLADORIA/LANCAMENTOS_LOTE.robot"
# robot -v browser:firefox -t "SMF-8723:Acesso a Abertura" -d ./5-results/SMF-8723 "3-tests/6-CONTROLADORIA/LANCAMENTOS_LOTE.robot"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar, Cta a Receber, Bancos)>Tabelas>Empresas"@nprint @las
    