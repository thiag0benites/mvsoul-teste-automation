#################################################################################################################################################################
# Autor: Fernando Lima
# Decrição: Teste da tela Exames
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_EXALAB.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_EXALAB.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_EXALAB.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_EXALAB.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_EXALAB_STEPS.robot
Resource            ../../2-pages/2-ASSISTENCIAL/M_EXALAB_PAGE.robot
Resource            ../../Config.robot


### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

#Suite registrada no gerenciador de dados
${suite}            m_exalab
#Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMEXALAB-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMEXALAB-001:Fluxo Principal" -d ./5-results/SCR2AMEXALAB-001 "3-tests/2-ASSISTENCIAL/M_EXALAB.robot"
# robot -v browser:firefox -t "SCR2AMEXALAB-001:Fluxo Principal" -d ./5-results/SCR2AMEXALAB-001 "3-tests/2-ASSISTENCIAL/M_EXALAB.robot"
    #${dados}           Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMEXALAB-001"
    Acessa a Tela Pela Busca |m_exalab||Exames| @las
    Validar Acesso a Tela |Exames|
    Preencher Campo Nome
    Selecionar Tipo 
    Clicar Bt Salvar           
    sleep         5
    #Clicar no Botao Resultado 
    #Selecionar o nome na lista e confirmar #sem resultado
    #Clicar no Botao Salvar
    #|${dados}[NomeTela]|
    #Clicar no Botao Filtro
    #Preencher Campo Data |${dados}[DtInicial]| |${dados}[DtFinal]|
    #Clicar no Botao Pesquisar
    #Validar Dados de Campos |${dados}[NomePaciente]| |${dados}[NomeExame]| |${dados}[Idade]|



    

    

    

  

