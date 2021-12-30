#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Movimentação de Arsenal - Saída
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_MVTO_ARSENAL_SAI.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_MVTO_ARSENAL_SAI.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_MVTO_ARSENAL_SAI.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_MVTO_ARSENAL_SAI.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/M_MVTO_ARSENAL_SAI_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_mvto_arsenal_sai
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMMVTOARSENALSAI-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MMMVTOARSENALSAI-001:Fluxo Principal" -d ./5-results/SCR4MMMVTOARSENALSAI-001 "3-tests/4-MATERIAIS/M_MVTO_ARSENAL_SAI.robot"
# robot -v browser:firefox -t "SCR4MMMVTOARSENALSAI-001:Fluxo Principal" -d ./5-results/SCR4MMMVTOARSENALSAI-001 "3-tests/4-MATERIAIS/M_MVTO_ARSENAL_SAI.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMMVTOARSENALSAI-001"
    Acessar a tela "Serviços de Apoio>Central de Materiais Esterilizados>Movimentações>Arsenal>Saída"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Dados da Movimentacao |${dados}[SetorCME]| |${dados}[ColabRetirante]| |${dados}[Colaborador]| |${dados}[Setor]| |${dados}[Localidade]|
    Selecionar Composicao |${dados}[CdComposicao]|
    Validar Saida de Arsenal |${dados}[MensagemSucesso]|
    # Retornar massa de dados para status inicial do teste
    Liberar Entrada de Arsenal |${dados}[SetorCME]| |${dados}[Colaborador]| |${dados}[CdComposicao]| |${dados}[MensagemEntrada]|
