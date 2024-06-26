#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Acomanhamento de Diligenciamento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_DILIGENCIAMENTO.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_DILIGENCIAMENTO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_DILIGENCIAMENTO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_DILIGENCIAMENTO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_DILIGENCIAMENTO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_diligenciamento
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMDILIGENCIAMENTO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMDILIGENCIAMENTO-001:Fluxo Principal" -d ./5-results/SCR2AMDILIGENCIAMENTO-001 "3-tests/2-ASSISTENCIAL/M_DILIGENCIAMENTO.robot"
# robot -v browser:firefox -t "SCR2AMDILIGENCIAMENTO-001:Fluxo Principal" -d ./5-results/SCR2AMDILIGENCIAMENTO-001 "3-tests/2-ASSISTENCIAL/M_DILIGENCIAMENTO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMDILIGENCIAMENTO-001"
    Acessa a Tela Pela Busca |M_DILIGENCIAMENTO||Acompanhamento de Diligenciamento| @las
    #Acessar a tela "Diagnóstico e Terapia>Laboratório de Análises Clínicas>Consultas>Acompanhamento de Diligenciamento"@nprint @las
    Pesquisar Diligenciamento |${dados}[DtInicial]| |${dados}[DtFinal]|
    Validar Resultado da Pesquisa |${dados}[Paciente]| |${dados}[Diligenciamento]| |${dados}[Exame]|
    Imprimir Relatorio