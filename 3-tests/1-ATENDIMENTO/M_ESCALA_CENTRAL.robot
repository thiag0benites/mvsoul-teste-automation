#################################################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: 
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/5-FATURAMENTO "3-tests\1-ATENDIMENTO/M_ESCALA_CENTRAL.robot"
# firefox: robot -v browser:firefox -d ./5-results/5-FATURAMENTO "3-tests\1-ATENDIMENTO/M_ESCALA_CENTRAL.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/5-FATURAMENTO "3-tests\1-ATENDIMENTO/M_ESCALA_CENTRAL.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/5-FATURAMENTO "3-tests1-ATENDIMENTO/M_ESCALA_CENTRAL.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/M_ESCALA_CENTRAL_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}          m_escala_central  
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMLESCALACENTRAL-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMLESCALACENTRAL-001:Fluxo Principal" -d ./5-results/SCR1AMLESCALACENTRAL-001 "3-tests/1-ATENDIMENTO/M_ESCALA_CENTRAL.robot"
# robot -v browser:firefox -t "SCR1AMLESCALACENTRAL-001:Fluxo Principal" -d ./5-results/SCR1AMLESCALACENTRAL-001 "3-tests/1-ATENDIMENTO/M_ESCALA_CENTRAL.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMLESCALACENTRAL-001"
    Acessar a tela "Atendimento>Central de Agendamento>Tabelas>Cadastro de Escalas"@nprint @nao
    Cadastro de Escalas |${dados}[Prestador]||${dados}[HoraInicial]||${dados}[HoraFinal]||${dados}[DiaSemana]||${dados}[Dinamica]||${dados}[Setor]||${dados}[MsgEsperada]|