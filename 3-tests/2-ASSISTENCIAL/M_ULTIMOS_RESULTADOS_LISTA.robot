#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Ultimos Resultados
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ULTIMOS_RESULTADOS_LISTA.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ULTIMOS_RESULTADOS_LISTA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ULTIMOS_RESULTADOS_LISTA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ULTIMOS_RESULTADOS_LISTA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/2-ASSISTENCIAL/M_ULTIMOS_RESULTADOS_LISTA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_ultimos_resultados_lista
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMULTIMOSRESULTADOSLISTA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMULTIMOSRESULTADOSLISTA-001:Fluxo Principal" -d ./5-results/SCR2AMULTIMOSRESULTADOSLISTA-001 "3-tests/2-ASSISTENCIAL/M_ULTIMOS_RESULTADOS_LISTA.robot"
# robot -v browser:firefox -t "SCR2AMULTIMOSRESULTADOSLISTA-001:Fluxo Principal" -d ./5-results/SCR2AMULTIMOSRESULTADOSLISTA-001 "3-tests/2-ASSISTENCIAL/M_ULTIMOS_RESULTADOS_LISTA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMULTIMOSRESULTADOSLISTA-001"
    Acessa a Tela Pela Busca |M_ADMIN_EXA_LAB||Gerenciamento de Exames| @las
    #Acessar a tela "Diagnostico e Terapia>Laboratorio de Analises Clinicas>Atendimento>Gerenciamento de Exames"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTelaGerenciamento]|
    Pesquisar Exames Realizados |${dados}[Pedido]| |${dados}[Paciente]|
    Acessar Tela M_LIBERA_EXAME_LAB |${dados}[NomeTelaLiberacao]|
    Validar Tela M_ULTIMOS_RESULTADOS_LISTA |${dados}[Paciente]| |${dados}[Exame]| |${dados}[Laboratorio]|


