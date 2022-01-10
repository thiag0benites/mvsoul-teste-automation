#################################################################################################################################################################
# Autor: José Neto
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:firefox -d ./5-results/R_BOLETO_STEPS "3-tests\6 - CONTROLADORIA\R_BOLETO.robot"
# chrome:         robot -v browser:chrome -d ./5-results/R_BOLETO_STEPS "3-tests\6 - CONTROLADORIA\R_BOLETO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/R_BOLETO_STEPS "3-tests\6 - CONTROLADORIA\R_BOLETO.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/R_BOLETO_STEPS "3-tests\6 - CONTROLADORIA\R_BOLETO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/6-CONTROLADORIA/R_BOLETO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          r_boleto
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6CRBOLETO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR6CRBOLETO-001:Fluxo Principal" -d ./5-results/SCR6CRBOLETO-001 "3-tests/6-CONTROLADORIA/R_BOLETO.robot"
# robot -v browser:firefox -t "SCR6CRBOLETO-001:Fluxo Principal" -d ./5-results/SCR6CRBOLETO-001 "3-tests/6-CONTROLADORIA/R_BOLETO.robot"
    #${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6CRBOLETO-001"
    #Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Relatórios>Contas a Pagar>Borderô>por BOLETO"@nprint @nao
    Acessa a Tela Pela Busca |R_BOLETO||por BOLETO| @nao
    Validacao do Relatorio