#################################################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/SCR1AALT_PAC "3-tests\1 - ATENDIMENTO/ALT_PAC.robot"
# firefox:        robot -v browser:firefox -d ./5-results/SCR1AALT_PAC "3-tests\1 - ATENDIMENTO/ALT_PAC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/SCR1AALT_PAC_RPA"3-tests\1 - ATENDIMENTO/ALT_PAC.robot"
# firefox:        robot -v browser:headlessfirefox -d ./5-results/SCR1AALT_PAC_RPA "3-tests\1 - ATENDIMENTO/ALT_PAC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes

Resource            ../../1-resources/8-SERVICO_APOIO/R_REPO_ATE_STEPS.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao


*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          r_repo_ate
# Recebe dados do gerenciador
${dados}

*** Test Case ***

SCR8SRREPOATE-001:Fluxo Principal          #Tela R_PERSON
# robot -v browser:chrome -t "SCR8SRREPOATE-001:Fluxo Principal" -d ./5-results/SCR8SRREPOATE-001 "3-tests/8-SERVICO_APOIO/R_REPO_ATE.robot"
# robot -v browser:firefox -t "SCR8SRREPOATE-001:Fluxo Principal" -d ./5-results/SCR8SRREPOATE-001 "3-tests/8-SERVICO_APOIO/R_REPO_ATE.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SRREPOATE-001"
    Acessar a tela "Serviços de Apoio>Higienização>Relatórios>Personalizados"@nprint @nao
    Parametros a serem preenchidos|${dados}[UnidadeDeInternacao]||${dados}[Convenio]|
    Validacao do Relatorio



