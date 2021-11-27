#################################################################################################################################################################
# Autor: Fernando Lima
# Decrição: Teste da tela Espera para Coleta de Materiais
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ESPERA_COLETA.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ESPERA_COLETA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ESPERA_COLETA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ESPERA_COLETA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_ESPERA_COLETA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

#Suite registrada no gerenciador de dados
${suite}            m_espera_coleta
#Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMESPERACOLETA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMESPERACOLETA-001:Fluxo Principal" -d ./5-results/SCR2AMESPERACOLETA-001 "3-tests/2-ASSISTENCIAL/M_ESPERA_COLETA.robot"
# robot -v browser:firefox -t "SCR2AMESPERACOLETA-001:Fluxo Principal" -d ./5-results/SCR2AMESPERACOLETA0-001 "3-tests/2-ASSISTENCIAL/M_ESPERA_COLETA.robot"
    ${dados}           Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMESPERACOLETA-001"
    #Acessar a tela "Diagnóstico e Terapia>Laboratório de Análises Clínicas>Coleta>Lista de Espera para Coleta"@nprint @las
    Acessa a Tela Pela Busca |m_espera_coleta||Lista de Espera para Coleta| @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Clicar no Botao Filtro
    Preencher Campo Data |${dados}[DtInicial]| |${dados}[DtFinal]|
    Clicar no Botao Pesquisar
    Validar Dados de Campos |${dados}[NomePaciente]| |${dados}[NomeExame]| |${dados}[Idade]|


    

    

    

  

