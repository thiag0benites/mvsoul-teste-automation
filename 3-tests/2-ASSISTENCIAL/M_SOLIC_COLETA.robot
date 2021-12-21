#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Solicitação de Coleta de Material
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_SOLIC_COLETA.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_SOLIC_COLETA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_SOLIC_COLETA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_SOLIC_COLETA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_SOLIC_COLETA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_solic_coleta
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMSOLICCOLETA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMSOLICCOLETA-001:Fluxo Principal" -d ./5-results/SCR2AMSOLICCOLETA-001 "3-tests/2-ASSISTENCIAL/M_SOLIC_COLETA.robot"
# robot -v browser:firefox -t "SCR2AMSOLICCOLETA-001:Fluxo Principal" -d ./5-results/SCR2AMSOLICCOLETA-001 "3-tests/2-ASSISTENCIAL/M_SOLIC_COLETA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMSOLICCOLETA-001"
    Acessar a tela "Diagnostico e Terapia>Laboratorio de Analises Clinicas>Coleta>Solicitação de Coleta"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Pesquisar Atendimento |${dados}[Atendimento]| |${dados}[MensagemPaciente]| |${dados}[Paciente]|
    Incluir Amostra |${dados}[Tpcoleta]| |${dados}[Material]|
    Incluir Exame |${dados}[Exame]|
    Clicar Botao Salvar |${dados}[MensagemSucesso]|




