# Autor: Denner Ricardo
# Decrição: Testes da tela M_CONVERTE_RPS
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_CONVERTE_RPS "3-tests/5-FATURAMENTO/M_CONVERTE_RPS.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_CONVERTE_RPS "3-tests/5-FATURAMENTO/M_CONVERTE_RPS.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_CONVERTE_RPS "3-tests/5-FATURAMENTO/M_CONVERTE_RPS.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_CONVERTE_RPS "3-tests/5-FATURAMENTO/M_CONVERTE_RPS.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/5-FATURAMENTO/M_CONVERTE_RPS_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}           M_CONVERTE_RPS
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMCONVERTERPS-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5FMCONVERTERPS-001:Fluxo Principal" -d ./5-results/SCR5FMCONVERTERPS-001 "3-tests/5-FATURAMENTO/M_CONVERTE_RPS.robot"
# robot -v browser:firefox -t "SCR5FMCONVERTERPS-001:Fluxo Principal" -d ./5-results/SCR5FMCONVERTERPS-001 "3-tests/5-FATURAMENTO/M_CONVERTE_RPS.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMCONVERTERPS-001"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Conta Ambulatorial>Conta do Atendimento"@nprint @las
    Validar Acesso a Tela |${dados}[nomeTela]|
    Preencher e validar atendimento |${dados}[atendimento]| e clicar no botao recebe 
    Imprimir nota Fiscal 
    Atualizar e validar mensagem |${dados}[mensagemSucesso]|

    