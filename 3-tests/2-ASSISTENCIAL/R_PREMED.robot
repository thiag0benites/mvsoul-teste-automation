#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Alteração de Atendimento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\R_PREMED.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\R_PREMED.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\R_PREMED.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\R_PREMED.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/R_PREMED_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            r_premed
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2ARPREMED-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2ARPREMED-001:Fluxo Principal" -d ./5-results/SCR2ARPREMED-001 "3-tests/2-ASSISTENCIAL/R_PREMED.robot"
# robot -v browser:firefox -t "SCR2ARPREMED-001:Fluxo Principal" -d ./5-results/SCR2ARPREMED-001 "3-tests/2-ASSISTENCIAL/R_PREMED.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2ARPREMED-001"
    #Acessa a Tela Pela Busca |R_ESOL||Exames Solicitados| @las
    Acessar a tela "Atendimento>Internação Domiciliar (Home Care)>Relatórios>Internados>Prescrição"@nprint @las
    Preencher Parametros do Relatorio |${dados}[Prescricao]|
    Imprimir Relatorio




