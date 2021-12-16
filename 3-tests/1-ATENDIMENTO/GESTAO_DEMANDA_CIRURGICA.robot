#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/GESTAO_DEMANDA_CIRURGICA_STEPS "3-tests\1-ATENDIMENTO\GESTAO_DEMANDA_CIRURGICA.robot"
# chrome:         robot -v browser:firefox -d ./5-results/GESTAO_DEMANDA_CIRURGICA_STEPS "3-tests\1-ATENDIMENTO\GESTAO_DEMANDA_CIRURGICA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/GESTAO_DEMANDA_CIRURGICA_STEPS "3-tests\1-ATENDIMENTO\GESTAO_DEMANDA_CIRURGICA.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/GESTAO_DEMANDA_CIRURGICA_STEPS "3-tests\1-ATENDIMENTO\GESTAO_DEMANDA_CIRURGICA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/1-ATENDIMENTO/GESTAO_DEMANDA_CIRURGICA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}          gestao_demanda_cirurgica
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AGESTAODEMANDACIRURGICA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AGESTAODEMANDACIRURGICA-001:Fluxo Principal" -d ./5-results/SCR1AGESTAODEMANDACIRURGICA-001 "3-tests/1-ATENDIMENTO/GESTAO_DEMANDA_CIRURGICA.robot"
# robot -v browser:firefox -t "SCR1AGESTAODEMANDACIRURGICA-001:Fluxo Principal" -d ./5-results/SCR1AGESTAODEMANDACIRURGICA-001 "3-tests/1-ATENDIMENTO/GESTAO_DEMANDA_CIRURGICA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AGESTAODEMANDACIRURGICA-001"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Gestão de Demanda Cirúrgica"@nprint @las
    Aperte o batão Pesquisa na tela principal
    Escolha uma linha
    Mensagem validada |${dados}[MsgVerificada]|