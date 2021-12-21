#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Registro de Passagem de Amostra
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_REGISTRA_MOV_AMOSTRA.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_REGISTRA_MOV_AMOSTRA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_REGISTRA_MOV_AMOSTRA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_REGISTRA_MOV_AMOSTRA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_REGISTRA_MOV_AMOSTRA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_registra_mov_amostra
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMREGISTRAMOVAMOSTRA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMREGISTRAMOVAMOSTRA-001:Fluxo Principal" -d ./5-results/SCR2AMREGISTRAMOVAMOSTRA-001 "3-tests/2-ASSISTENCIAL/M_REGISTRA_MOV_AMOSTRA.robot" 
# robot -v browser:firefox -t "SCR2AMREGISTRAMOVAMOSTRA-001:Fluxo Principal" -d ./5-results/SCR2AMREGISTRAMOVAMOSTRA-001 "3-tests/2-ASSISTENCIAL/M_REGISTRA_MOV_AMOSTRA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMREGISTRAMOVAMOSTRA-001"
    Acessar a tela "Diagnostico e Terapia>Laboratorio de Analises Clinicas>Coleta>Registro de Passagem de Amostra"@nprint @las
    Selecionar Amostra |${dados}[Bancada]| |${dados}[Amostra]|
    Validar Passagem de Amostra |${dados}[MsgRegistroAnterior]| |${dados}[MsgConfirmaPassagem]| |${dados}[ValidaPassagemAmostra]|
    




