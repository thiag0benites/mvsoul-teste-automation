#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/O_MOV_CAIXA_STEPS "3-tests\6 - CONTROLADORIA\O_MOV_CAIXA.robot"
# chrome:         robot -v browser:firefox -d ./5-results/O_MOV_CAIXA_STEPS "3-tests\6 - CONTROLADORIA\O_MOV_CAIXA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/O_MOV_CAIXA_STEPS "3-tests\6 - CONTROLADORIA\O_MOV_CAIXA.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/O_MOV_CAIXA_STEPS "3-tests\6 - CONTROLADORIA\O_MOV_CAIXA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/6-CONTROLADORIA/O_MOV_CAIXA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}          o_mov_caixa
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
#SMF-6473 : Lançamentos/Fechamento - Efetuar Depósito de documentos do caixa 
# robot -v browser:chrome -t "SMF-6473 : Lançamentos/Fechamento - Efetuar Depósito de documentos do caixa" -d ./5-results/SMF-6473 "3-tests/6-CONTROLADORIA/O_MOV_CAIXA.robot"
# robot -v browser:firefox -t "SMF-6473 : Lançamentos/Fechamento - Efetuar Depósito de documentos do caixa" -d ./5-results/SMF-6473 "3-tests/6-CONTROLADORIA/O_MOV_CAIXA.robot"
    # Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Caixa>Caixa>Movimentação>Lançamentos/Fechamento"@nprint @las
    # Informar o caixa que sera vizualizado operado
    # Clicar em Executar Pesquisa
    # Abrir a Aba DOCUMENTOS
    # Selecionar por meio do check box Doc Caixa o s documento s que sera ao Depositado s
    # Selecionar no campo Conta Corrente a conta corrente que recebera o deposito
    # Clicar no botao Efetuar Deposito |${dados}[MsgLida]|
    # #Clicar no botao Limpar Deposito

SMF-6478 : Lançamentos/Fechamento - Aplicação Direta - Despesa Direta
# robot -v browser:chrome -t "SMF-6478 : Lançamentos/Fechamento - Aplicação Direta - Despesa Direta" -d ./5-results/SMF-6478 "3-tests/6-CONTROLADORIA/O_MOV_CAIXA.robot"
# robot -v browser:firefox -t "SMF-6478 : Lançamentos/Fechamento - Aplicação Direta - Despesa Direta" -d ./5-results/SMF-6478 "3-tests/6-CONTROLADORIA/O_MOV_CAIXA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-6478"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Caixa>Caixa>Movimentação>Lançamentos/Fechamento"@nprint @las
    Informar o caixa que sera vizualizado operado
    Clicar em Executar Pesquisa
    Abrir a Aba APLICACAO DIRETA
    Selecionar no campo Lancamento o tipo de pagamento a efetuar
    Informar o valor no campo valor |${dados}[Valor2]|
    Selecionar no campo setor o setor para o qual sera alocado esta despesa
    Selecionar no campo Motivo de lancamento
    Clicar no botao Efetuar Pagamento |${dados}[MsgLida]|
    Clicar no botao Limpar Pagamento