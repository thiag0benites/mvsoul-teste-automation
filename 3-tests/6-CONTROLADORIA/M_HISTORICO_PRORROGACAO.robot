#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Contas a Pagar M_HISTORICO_PRORROGACAO
#################################################################################################################################################################
# Execução Exemplo:
# chrome:   robot -v browser:chrome -t "SCR6CMHISTORICOPRORROGACAO-001:Contas a Pagar" -d ./5-results/SCR6CMHISTORICOPRORROGACAO-001 "3-tests/6-CONTROLADORIA/M_HISTORICO_PRORROGACAO.robot"
# firefox:  robot -v browser:firefox -t "SCR6CMHISTORICOPRORROGACAO-001:Contas a Pagar" -d ./5-results/SCR6CMHISTORICOPRORROGACAO-001 "3-tests/6-CONTROLADORIA/M_HISTORICO_PRORROGACAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR6CMHISTORICOPRORROGACAO-001 "3-tests/6-CONTROLADORIA/M_HISTORICO_PRORROGACAO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR6CMHISTORICOPRORROGACAO-001 "3-tests/6-CONTROLADORIA/M_HISTORICO_PRORROGACAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/6-CONTROLADORIA/M_HISTORICO_PRORROGACAO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessao
# Suite Teardown    Encerra sessão

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_HISTORICO_PRORROGACAO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6CMHISTORICOPRORROGACAO-001:Contas a Pagar
# robot -v browser:chrome -t "SCR6CMHISTORICOPRORROGACAO-001:Contas a Pagar" -d ./5-results/SCR6CMHISTORICOPRORROGACAO-001 "3-tests/6-CONTROLADORIA/M_HISTORICO_PRORROGACAO.robot"
# robot -v browser:firefox -t "SCR6CMHISTORICOPRORROGACAO-001:Contas a Pagar" -d ./5-results/SCR6CMHISTORICOPRORROGACAO-001 "3-tests/6-CONTROLADORIA/M_HISTORICO_PRORROGACAO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6CMHISTORICOPRORROGACAO-001"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Pagar>Lançamentos/Adiantamentos>Cadastro"@nprint @las
    Validar Acesso a Tela |${dados}[nomeTela]| 
    Preencher codigo e Validar |${dados}[codigo]|
    Preencher novo vencimento e Validar |${dados}[novaDtVencimento]|
    Preencher motivo |${dados}[motivo]| e Validar |${dados}[nomeFornecedor]|
    Prorrogar e validar mensagem |${dados}[mensagemSucesso]|