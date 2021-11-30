#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/C_REPASSE_CONTA "3-tests\6-CONTROLADORIA\C_REPASSE_CONTA.robot"
# chrome:         robot -v browser:firefox -d ./5-results/C_REPASSE_CONTA "3-tests\6-CONTROLADORIA\C_REPASSE_CONTA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/C_REPASSE_CONTA "3-tests\6-CONTROLADORIA\C_REPASSE_CONTA.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/C_REPASSE_CONTA "3-tests\6-CONTROLADORIA\C_REPASSE_CONTA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/6-CONTROLADORIA/M_CONPAG_RES_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}          c_repasse_conta
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
SMF-5428 : Cadastrar titulos a pagar seguindo o Processo Contas a Pagar de Diversos
# robot -v browser:chrome -t "SMF-5428 : Cadastrar titulos a pagar seguindo o Processo Contas a Pagar de Diversos" -d ./5-results/SMF-5428 "3-tests/6-CONTROLADORIA/M_CONPAG_RES.robot"
# robot -v browser:firefox -t "SMF-5428 : Cadastrar titulos a pagar seguindo o Processo Contas a Pagar de Diversos" -d ./5-results/SMF-5428 "3-tests/6-CONTROLADORIA/M_CONPAG_RES.robot"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Pagar>Lançamentos/Adiantamentos>Cadastro"@nprint @las
    Indicar no campo 'Processo'|Contas a Pagar de Diversos| o tipo "Contas a Pagar de Diversos"
    Preencher Tipo Documento |TESTE DOCUMENTO|
    



