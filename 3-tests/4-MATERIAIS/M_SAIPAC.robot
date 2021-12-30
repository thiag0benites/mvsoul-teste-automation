#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela M_SAIPAC - Saida de produtos de paciente
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_SAIPAC "3-tests\4-MATERIAIS\M_SAIPAC.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_SAIPAC "3-tests\4-MATERIAIS\M_SAIPAC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_SAIPAC.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_SAIPAC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/M_SAIPAC_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_saipac
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-3025:Fluxo Principal
# robot -v browser:chrome -t "SMF-3025:Fluxo Principal" -d ./5-results/SMF-3025 "3-tests/4-MATERIAIS/M_SAIPAC.robot"
# robot -v browser:firefox -t "SMF-3025:Fluxo Principal" -d ./5-results/SMF-3025 "3-tests/4-MATERIAIS/M_SAIPAC.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-3025"
    Acessar a tela "Materiais e Logística>Almoxarifado>Movimentações>Saída de Produtos>De Pacientes"@nprint @las
    Preencher o campos Estoque|${dados}[estoque]|, Atendimento|${dados}[atendimento]|
    Preencher o campo Produto|${dados}[produto]|
    Clicar no botao[Ok]
    Preencher o campo QtdDisponivel|${dados}[qtdDisponivel]|
    Clicar no botao[Concluir]
    Genericos.Valida Mensagem    ${mensagemPop}    ${dados}[msgEsperada]
    Captura codigo|${suite}|${dados}[id]|
