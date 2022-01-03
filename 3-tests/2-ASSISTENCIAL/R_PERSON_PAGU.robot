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

Resource            ../../1-resources/2-ASSISTENCIAL/R_PERSON_PAGU_STEPS.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao


*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          r_censo
# Recebe dados do gerenciador
${dados}

*** Test Case ***

SCR2ARPERSONPAGU-001:Fluxo Principal          
# robot -v browser:chrome -t "SCR2ARPERSONPAGU-001:Fluxo Principal" -d ./5-results/SCR2ARPERSONPAGU-001 "3-tests/2-ASSISTENCIAL/R_PERSON_PAGU.robot"
# robot -v browser:firefox -t "SCR2ARPERSONPAGU-001:Fluxo Principal" -d ./5-results/SCR2ARPERSONPAGU-001 "3-tests/2-ASSISTENCIAL/R_PERSON_PAGU.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2ARPERSONPAGU-001"
    Acessar a tela "Clínica e Assistencial>Gerenciamento de Unidades>Relatórios>Personalizados"@nprint @nao
    Parametros a serem preenchidos|${dados}[UnidadeDeInternacao]||${dados}[Convenio]|
    Validacao do Relatorio



