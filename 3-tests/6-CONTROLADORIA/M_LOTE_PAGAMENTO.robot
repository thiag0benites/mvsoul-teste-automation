#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_LOTE_PAGAMENTO_STEPS "3-tests\6-CONTROLADORIA\M_LOTE_PAGAMENTO.robot"
# chrome:         robot -v browser:firefox -d ./5-results/M_LOTE_PAGAMENTO_STEPS "3-tests\6-CONTROLADORIA\M_LOTE_PAGAMENTO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_LOTE_PAGAMENTO_STEPS "3-tests\6-CONTROLADORIA\M_LOTE_PAGAMENTO.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_LOTE_PAGAMENTO_STEPS "3-tests\6-CONTROLADORIA\M_LOTE_PAGAMENTO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/6-CONTROLADORIA/M_LOTE_PAGAMENTO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}          m_lote_pagamento
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-5451 : Agrupar os títulos no Lote de Pagamento pesquisando por Data de vencimento
# robot -v browser:chrome -t "SMF-5451 : Agrupar os títulos no Lote de Pagamento pesquisando por Data de vencimento" -d ./5-results/SMF-5451 "3-tests/6-CONTROLADORIA/M_LOTE_PAGAMENTO.robot"
# robot -v browser:firefox -t "SMF-5451 : Agrupar os títulos no Lote de Pagamento pesquisando por Data de vencimento" -d ./5-results/SMF-5451 "3-tests/6-CONTROLADORIA/M_LOTE_PAGAMENTO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5451"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Pagar>Pagamentos>Lotes de Pagamentos"@nprint @las
    Atribuir no campo descricao uma nomenclatura |${dados}[Descricao]|
    Aperte em Salvar
    Acione a tecla pesquisar contas a pagar
    Pesquisar por data de vencimento/previsao de pagamento |${dados}[DtInicial]| |${dados}[DtFinal]|
    Clicar em associar
    Aprovar o lote alterando do nivel 0 para o proximo nivel |${dados}[Autorizacao]| |${dados}[MsgConfirmacao]|