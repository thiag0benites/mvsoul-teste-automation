#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Alteração de Atendimento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\ALT_INTOK.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\ALT_INTOK.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\ALT_INTOK.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\ALT_INTOK.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/ALT_INTOK_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            alt_intok
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AALTINTOK-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AALTINTOK-001:Fluxo Principal" -d ./5-results/SCR2AALTINTOK-001 "3-tests/2-ASSISTENCIAL/ALT_INTOK.robot"
# robot -v browser:firefox -t "SCR2AALTINTOK-001:Fluxo Principal" -d ./5-results/SCR2AALTINTOK-001 "3-tests/2-ASSISTENCIAL/ALT_INTOK.robot"
    #${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AALTINTOK-001"
    Acessar a tela "Atendimento>Internação>Atendimento>Alteração de Atendimento"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Consultar Atendimento
    Alterar Campo Servico |${dados}[Servico]|
    # Retornar massa de dados para status inicial
    Alterar Campo Servico |${dados}[RetornaServico]|


