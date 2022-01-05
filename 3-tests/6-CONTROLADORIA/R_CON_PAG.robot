#################################################################################################################################################################
# Autor: Marcos Costa
# Decrição: Relatório Pagamentos Realizados
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -t "SCR5FRCONPAG001:Fluxo Principal" -d ./5-results/SCR5FRCONPAG001 "3-tests/6-CONTROLADORIA/r_con_pag.robot"
# chrome:         robot -v browser:firefox -t "SCR5FRCONPAG001:Fluxo Principal" -d ./5-results/SCR5FRCONPAG001 "3-tests/6-CONTROLADORIA/r_con_pag.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -t "SCR5FRCONPAG001:Fluxo Principal" -d ./5-results/SCR5FRCONPAG001 "3-tests/6-CONTROLADORIA/r_con_pag.robot"
# chrome:         robot -v browser:headlessfirefox -t "SCR5FRCONPAG001:Fluxo Principal" -d ./5-results/SCR5FRCONPAG001 "3-tests/6-CONTROLADORIA/r_con_pag.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/6-CONTROLADORIA/R_CON_PAG_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}          r_con_pag
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FRCONPAG001:Fluxo Principal
    # robot -v browser:chrome -t "SCR5FRCONPAG001:Fluxo Principal" -d ./5-results/SCR5FRCONPAG001 "3-tests/6-CONTROLADORIA/r_con_pag.robot"
    # robot -v browser:firefox -t "SCR5FRCONPAG001:Fluxo Principal" -d ./5-results/SCR5FRCONPAG001 "3-tests/6-CONTROLADORIA/r_con_pag.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FRCONPAG001"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Relatórios>Contas a Pagar>Pagas>Pagas"@nprint @las
    Informar no Relatorio <Empresa> |${dados}[Empresa]| <Fornec> |${dados}[Fornec]| <ConCont> |${dados}[ConCont]| <ConCor> |${dados}[ConCor]| <Processo> |${dados}[Processo]| <TipoDoc> |${dados}[TipoDoc]| <PerInicial> |${dados}[PerInicial]| <PerFinal> |${dados}[PerFinal]| <PeriodoDe> |${dados}[PeriodoDe]|
    Captura da ulr do pdf gerado <suite> |${suite}| <id> |${dados}[id]|