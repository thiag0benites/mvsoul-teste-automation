#################################################################################################################################################################
# Autor: Marcos Costa
# Decrição: Executar  a conciliação bancária dos lançamentos de extrato efetuados nas contas correntes da instituição . 
# A conciliação consiste num comparativo entre as movimentações na conta bancária e as registradas no sistema de Controle Financeiro.
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome  -d ./5-results/SCR6COCONCBANC001 "3-tests/6-CONTROLADORIA/O_CONCBANC.robot"
# chrome:         robot -v browser:firefox -d ./5-results/SCR6COCONCBANC001 "3-tests/6-CONTROLADORIA/O_CONCBANC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome   -d ./5-results/SCR6COCONCBANC001 "3-tests/6-CONTROLADORIA/O_CONCBANC.robot"
# chrome:         robot -v browser:headlessfirefox  -d ./5-results/SCR6COCONCBANC001 "3-tests/6-CONTROLADORIA/O_CONCBANC.robot"
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
# Suite registrada no gerenciador de dados
${suite}          O_CONCBANC
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6COCONCBANC001:Fluxo Principal
# SMF-7250
# robot -v browser:chrome -t "SCR6COCONCBANC001:Fluxo Principal" -d ./5-results/SCR6COCONCBANC001 "3-tests/6-CONTROLADORIA/O_CONCBANC.robot"
# robot -v browser:firefox -t "SCR6COCONCBANC001:Fluxo Principal" -d ./5-results/SCR6COCONCBANC001 "3-tests/6-CONTROLADORIA/O_CONCBANC.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6COCONCBANC001"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Bancário>Movimentação>Conciliação Bancária"@nprint @las
    Informar no campo <Periodo Lanc> |${dados}[PeriodoLancInicial]| e |${dados}[PeriodoLancFinal]| 
    Preencher valor Valor Minmo |${dados}[ValorMinimo]| e Valor Maximo |${dados}[ValorMaximo]| do campo <Intervalo Valor>
    Informar no campo <Empresa> o codigo da empresa Valor Empresa |${dados}[ValorEmpresa]|
    Seleciona no campo <Status> uma Opçao |${dados}[StatusConCor]|
    Informar no campo <Nr do documento> o Numero de um doc a ser pesquisado |${dados}[ValorDoc]|
    Informar no campo <Conta Corrente> o Nr da Conta Corrente |${dados}[ContCorrente]|
    Clicar no Botao Pesquisar
    Selecionar os lancamentos que serao conciliados
    Clicar no botao Salvar |${dados}[MsgEsperada]|
    
    
