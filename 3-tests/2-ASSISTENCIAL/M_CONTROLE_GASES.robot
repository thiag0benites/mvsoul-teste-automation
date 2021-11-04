#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Movimentação de Aparelhos / Gases
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_CONTROLE_GASES.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_CONTROLE_GASES.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_CONTROLE_GASES.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_CONTROLE_GASES.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_CONTROLE_GASES_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_controle_gases
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMCONTROLEGASES-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMCONTROLEGASES-001:Fluxo Principal" -d ./5-results/SCR2AMCONTROLEGASES-001 "3-tests/2-ASSISTENCIAL/M_CONTROLE_GASES.robot"
# robot -v browser:firefox -t "SCR2AMCONTROLEGASES-001:Fluxo Principal" -d ./5-results/SCR2AMCONTROLEGASES-001 "3-tests/2-ASSISTENCIAL/M_CONTROLE_GASES.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMCONTROLEGASES-001"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Solicitações>Monitoração de Aparelhos/Gases"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Realizar Pesquisa de Atendimento
    Validar Tabela Descricao Do Procedimento
    Selecionar Procedimento |${dados}[Procedimento]|
    Preencher Campos Com Dados Do Procedimento
    Clicar Botao Salvar
    # Retornar massa de dados para status inicial
    Selecionar Procedimento |${dados}[RetornaProcedimento]|
    Excluir Dados Inseridos
 
