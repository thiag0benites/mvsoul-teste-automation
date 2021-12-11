    #################################################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:    robot -v browser:chrome -d ./5-results/SCR4MLISTASOLICESTERILIZACAO-001 "4-MATERIAIS/M_LISTA_SOLIC_ESTERILIZACAO.robot"
# firefox:   robot -v browser:firefox -d ./5-results/SCR4MLISTASOLICESTERILIZACAO-001 "4-MATERIAIS/M_LISTA_SOLIC_ESTERILIZACAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:    robot -v browser:headlesschrome -d ./5-results/SCR4MLISTASOLICESTERILIZACAO-001 "4-MATERIAIS/M_LISTA_SOLIC_ESTERILIZACAO.robot"
# firefox:   robot -v browser:headlessfirefox -d ./5-results/SCR4MLISTASOLICESTERILIZACAO-001 "4-MATERIAIS/M_LISTA_SOLIC_ESTERILIZACAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/4-MATERIAIS/M_LISTA_SOLIC_ESTERILIZACAO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot 
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
 # Suite registrada no gerenciador de dados
${suite}    m_lista_solic_esterilizacao     
 # Recebe dados do gerenciador M_LISTA_SOLIC_ESTERILIZACAO
${dados}

*** Test Case ***
SCR4MLISTASOLICESTERILIZACAO-001:Fluxo Principal          # : 
# robot -v browser:chrome -t "SCR4MLISTASOLICESTERILIZACAO-001:Fluxo Principal" -d ./5-results/SCR4MLISTASOLICESTERILIZACAO-001 "3-tests/4-MATERIAIS/M_LISTA_SOLIC_ESTERILIZACAO.robot"
# robot -v browser:firefox -t "SCR4MLISTASOLICESTERILIZACAO-001:Fluxo Principal" -d ./5-results/SCR4MLISTASOLICESTERILIZACAO-001 "3-tests/4-MATERIAIS/M_LISTA_SOLIC_ESTERILIZACAO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MLISTASOLICESTERILIZACAO-001"
    #Acessar a tela "Serviços de Apoio>Central de Materiais Esterilizados>Lista de Pedidos de Esterilização>"@nprint @las
    Acessa a Tela Pela Busca |M_LISTA_SOLIC_ESTERILIZACAO||Lista de Pedidos de Esterilização| @las
    Preencher parametros de pesquisa |${dados}[Codigo]|