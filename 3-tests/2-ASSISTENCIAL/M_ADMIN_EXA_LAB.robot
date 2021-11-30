#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Gerenciamento de Exames
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ADMIN_EXA_LAB.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ADMIN_EXA_LAB.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ADMIN_EXA_LABrobot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ADMIN_EXA_LAB.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_ADMIN_EXA_LAB_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            M_ADMIN_EXA_LAB
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMADMINEXALAB-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMADMINEXALAB-001:Fluxo Principal" -d ./5-results/SCR2AMADMINEXALAB-001 "3-tests/2-ASSISTENCIAL/M_ADMIN_EXA_LAB.robot"
# robot -v browser:firefox -t "SCR2AMADMINEXALAB-001:Fluxo Principal" -d ./5-results/SCR2AMADMINEXALAB-001 "3-tests/2-ASSISTENCIAL/M_ADMIN_EXA_LAB.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMADMINEXALAB-001"
    #Acessar a tela "Diagnóstico e Terapia>Laboratório de Análises Clínicas>Atendimento>Gerenciamento de Exames"@nprint @las
    Acessa a Tela Pela Busca |M_ADMIN_EXA_LAB||Gerenciamento de Exames| @las
    Validar Acesso a Tela |Gerenciamento de Exames|
    Consultar Atendimento |${dados}[Atendimento]|
    Clicar no Pedido
    Excluir pelo Motivo |${dados}[MensagemExclusao]| |${dados}[MensagemExclusaoConfirma]| |${dados}[Motivo]|


