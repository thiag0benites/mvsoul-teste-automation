#################################################################################################################################################################
# Autor: Marcos Costa
# Decrição: Executar  a conciliação bancária dos lançamentos de extrato efetuados nas contas correntes da instituição . 
# A conciliação consiste num comparativo entre as movimentações na conta bancária e as registradas no sistema de Controle Financeiro.
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome  -d ./5-results/SRCMCAUCAO001 "3-tests/6-CONTROLADORIA/O_CONCBANC.robot"
# chrome:         robot -v browser:firefox -d ./5-results/SRCMCAUCAO001 "3-tests/6-CONTROLADORIA/O_CONCBANC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome   -d ./5-results/SRCMCAUCAO001 "3-tests/6-CONTROLADORIA/O_CONCBANC.robot"
# chrome:         robot -v browser:headlessfirefox  -d ./5-results/SRCMCAUCAO001 "3-tests/6-CONTROLADORIA/O_CONCBANC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes

Resource            ../../1-resources/6-CONTROLADORIA/O_CONCBANC_STEPS.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao


*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}          fat_consultas_conta_paciente
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
SROCONCBANC001:Fluxo Principal
# SMF-7250
# robot -v browser:chrome -t "SROCONCBANC001:Fluxo Principal" -d ./5-results/SROCONCBANC001 "3-tests/6-CONTROLADORIA/O_CONCBANC.robot"
# robot -v browser:firefox -t "SROCONCBANC001:Fluxo Principal" -d ./5-results/SROCONCBANC001 "3-tests/6-CONTROLADORIA/O_CONCBANC.robot"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Bancário>Movimentação>Conciliação Bancária"@nprint @las
    Informar no campo <Periodo Lanc> |01/09/2021| e |30/11/2021| 
    Preencher valor Valor Minmo |20| e Valor Maximo |1000| do campo <Intervalo Valor>
    Informar no campo <Empresa> o codigo da empresa Valor Empresa |5 - HOSPITAL MV - MATRIZ|
    Seleciona no campo <Status> uma Opçao |Não Conciliado|
    Informar no campo <Nr do documento> o Numero de um doc a ser pesquisado |XX34|
    Informar no campo <Conta Corrente> o Nr da Conta Corrente |BRADESCO HOBRA (CONVENIOS)|
    Clicar no Botao Pesquisar
    Selecionar os lancamentos que serao conciliados
    Clicar no botao Salvar
    
    
