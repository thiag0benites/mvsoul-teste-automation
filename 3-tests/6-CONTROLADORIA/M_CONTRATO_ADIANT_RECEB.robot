#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_CONTRATO_ADIANT_RECEB_STEPS "3-tests\6-CONTROLADORIA\M_CONTRATO_ADIANT_RECEB.robot"
# chrome:         robot -v browser:firefox -d ./5-results/M_CONTRATO_ADIANT_RECEB_STEPS "3-tests\6-CONTROLADORIA\M_CONTRATO_ADIANT_RECEB.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_CONTRATO_ADIANT_RECEB_STEPS "3-tests\6-CONTROLADORIA\M_CONTRATO_ADIANT_RECEB.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_CONTRATO_ADIANT_RECEB_STEPS "3-tests\6-CONTROLADORIA\M_CONTRATO_ADIANT_RECEB.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/6-CONTROLADORIA/M_CONTRATO_ADIANT_RECEB_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
#${suite}          m_lote_pagamento
# # Recebe dados do gerenciador
#${dados}

*** Test Case ***
SMF-5520 : Realizar Contrato de Adiantamento do tipo Financeiro
# robot -v browser:chrome -t "SMF-5520 : Realizar Contrato de Adiantamento do tipo Financeiro" -d ./5-results/SMF-5520 "3-tests/6-CONTROLADORIA/M_CONTRATO_ADIANT_RECEB.robot"
# robot -v browser:firefox -t "SMF-5520 : Realizar Contrato de Adiantamento do tipo Financeiro" -d ./5-results/SMF-5520 "3-tests/6-CONTROLADORIA/M_CONTRATO_ADIANT_RECEB.robot"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Caixa>Caixa>Manutenção de Contrato de Adiantamento"@nprint @las
    Informar a empresa que sera responsavel pelo contrato de adiantamento
    Selecionar o tipo de adiantamento que sera realizado Financeiro
    Selecionar o tipo de contratante
    Selecionar o contratante
    Atribuir uma descricao ao contrato e tambem atribuir um numero de contrato
    Atribuir uma data de vencimento de pagamento do contrato
    Atribuir da forma de pagamento
    Clicar no icone de salvar do menu principal
    Clicar no botao Gerar Contas a Receber
    Cadastrar Conta contabil
    Cadastrar Tipo de documento
    Cadastrar moeda a ser utilizada
    Cadastrar o setor a conta contabil a conta de custo e o valor do rateio
    Clicar no botao Concluir