#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Devolução de Produtos Paciente
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/SCR4MDEVPAC-001 "3-tests/4-MATERIAIS/M_DEVPAC.robot"
# firefox: robot -v browser:firefox -d ./5-results/SCR4MDEVPAC-001 "3-tests/4-MATERIAIS/M_DEVPAC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR4MDEVPAC-001 "3-tests/4-MATERIAIS/M_DEVPAC.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR4MDEVPAC-001 "3-tests/4-MATERIAIS/M_DEVPAC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                  ../../1-resources/4-MATERIAIS/M_DEVPAC_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup               Nova sessao
# Suite Teardown            Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup                Nova sessao
Test Teardown             Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}             m_devpac
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MDEVPAC-001:Fluxo principal
# robot -v browser:chrome -t "SCR4MDEVPAC-001:Fluxo principal" -d ./5-results/SCR4MDEVPAC-001 "3-tests/4-MATERIAIS/M_DEVPAC.robot"
# robot -v browser:firefox -t "SCR4MDEVPAC-001:Fluxo principal" -d ./5-results/SCR4MDEVPAC-001 "3-tests/4-MATERIAIS/M_DEVPAC.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MDEVPAC-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Movimentações>Devoluções>De Pacientes"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Dados da Devolucao |${dados}[Estoque]| |${dados}[Atendimento]| |${dados}[Motivo]|
    Preencher Produto a Ser Devolvido |${dados}[MensagemData]| |${dados}[Produto]| |${dados}[Quantidade]|
    Salvar Devolucao de Produto |${dados}[MensagemSucesso]| |${dados}[MensagemLimparTela]|




