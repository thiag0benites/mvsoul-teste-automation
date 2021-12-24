#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Consulta de Setores
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\m_consulta_setor.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\m_consulta_setor.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\m_consulta_setor.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\m_consulta_setor.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_CONSULTA_SETOR_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_consulta_setor
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMCONSULTASETOR-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMCONSULTASETOR-001:Fluxo Principal" -d ./5-results/SCR2AMCONSULTASETOR-001 "3-tests/2-ASSISTENCIAL/m_consulta_setor.robot"
# robot -v browser:firefox -t "SCR2AMCONSULTASETOR-001:Fluxo Principal" -d ./5-results/SCR2AMCONSULTASETOR-001 "3-tests/2-ASSISTENCIAL/m_consulta_setor.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMCONSULTASETOR-001" 
    Acessar a tela pela busca |m_workflow_pendencias_pssd||Painel Operacional de Pendências PSSD| @las

    Abrir Painel e acessar caminho da Tela
    Acessar e Alterar Setores |${dados}[Setor1]| |${dados}[Setor2]| |${dados}[Setor3]|
    Validar Insercao de Setor |${dados}[SetorCod]|


