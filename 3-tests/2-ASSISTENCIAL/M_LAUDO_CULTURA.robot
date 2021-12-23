#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Teste da tela Gerenciamento de Exames
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_LAUDO_CULTURA.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_LAUDO_CULTURA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_LAUDO_CULTURA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_LAUDO_CULTURA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_LAUDO_CULTURA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_laudo_cultura
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMLAUDOCULTURA-001:Fluxo Principal 
# robot -v browser:chrome -t "SCR2AMLAUDOCULTURA-001:Fluxo Principal" -d ./5-results/SCR2AMLAUDOCULTURA-001 "3-tests/2-ASSISTENCIAL/M_LAUDO_CULTURA.robot"
# robot -v browser:firefox -t "SCR2AMLAUDOCULTURA-001:Fluxo Principal" -d ./5-results/SCR2AMLAUDOCULTURA-001 "3-tests/2-ASSISTENCIAL/M_LAUDO_CULTURA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMLAUDOCULTURA-001"
    #Acessar a tela "Diagnostico e Terapia>Laboratorio de Analises Clinicas>Atendimento>Gerenciamento de Exames"@nprint @las
    Acessa a Tela Pela Busca |M_ADMIN_EXA_LAB||Gerenciamento de Exames| @las
    Selecione o exame |${dados}[Exame1]| |${dados}[NumeroPedido]|
    #Preencha o laudo cultura |${dados}[Tipo]| |${dados}[Obs]|
    #Preencha os detalhes da medicacao |${dados}[Campo]|
    Acione gravar laudo |${dados}[MsgVereficada]|
    Captura da mensagem |${suite}|${dados}[id]|