#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Solicitações de banco de sangue
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_SOLIC_SANGUE.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_SOLIC_SANGUE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_SOLIC_SANGUE.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_SOLIC_SANGUE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_SOLIC_SANGUE_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_solic_sangue
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMSOLICSANGUE-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMSOLICSANGUE-001:Fluxo Principal" -d ./5-results/SCR2AMSOLICSANGUE-001 "3-tests/2-ASSISTENCIAL/M_SOLIC_SANGUE.robot"
# robot -v browser:firefox -t "SCR2AMSOLICSANGUE-001:Fluxo Principal" -d ./5-results/SCR2AMSOLICSANGUE-001 "3-tests/2-ASSISTENCIAL/M_SOLIC_SANGUE.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMSOLICSANGUE-001"
    #Acessar a tela "Diagnóstico e Terapia>Banco de Sangue>Atendimentos>Solicitações de Exames"@nprint @las
    Acessa a Tela Pela Busca |M_SOLIC_SANGUE||Solicitações de Exames| @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Prencher Campos de Solicitacao para Banco de Sangue |${dados}[CdAtendimento]| |${dados}[SetorSolicitacao]| |${dados}[SetorExecutante]|
    Validar Preenchimento dos Campos |${dados}[Paciente]| |${dados}[Origem]| |${dados}[Prestador]|
    Selecionar Exame |${dados}[Exame]|
    Clicar Botao Salvar |${dados}[MensagemSucesso]|





