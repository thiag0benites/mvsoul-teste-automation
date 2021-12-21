#################################################################################################################################################################
# Autor: José Neto
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:firefox -d ./5-results/M_AUDIT_PRESC_STEPS "3-tests\2 - ASSISTENCIAL\M_AUDIT_PRESC.robot"
# chrome:         robot -v browser:chrome -d ./5-results/M_AUDIT_PRESC_STEPS "3-tests\2 - ASSISTENCIAL\M_AUDIT_PRESC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_AUDIT_PRESC_STEPS "3-tests\2 - ASSISTENCIAL\M_AUDIT_PRESC.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_AUDIT_PRESC_STEPS "3-tests\2 - ASSISTENCIAL\M_AUDIT_PRESC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/2-ASSISTENCIAL/M_AUDIT_PRESC_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_audit_presc
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMAUDITPRESC-001 : Fluxo Principal
    # robot -v browser:chrome -t "SCR2AMAUDITPRESC-001 : Fluxo Principal" -d ./5-results/SCR2AMAUDITPRESC-001 "3-tests/2-ASSISTENCIAL/M_AUDIT_PRESC.robot"
    # robot -v browser:firefox -t "SCR2AMAUDITPRESC-001 : Fluxo Principal"3-tests/2-ASSISTENCIAL/M_AUDIT_PRESC.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMAUDITPRESC-001"
    #Acessar a tela "Clínica e Assistencial>Controle de Infecção Hospitalar>Atendimento>Auditoria de Prescrições>Internação e Urgência"@nprint @nao
    Acessa a Tela Pela Busca |M_AUDIT_PRESC||Internação e Urgência| @nao
    Alterar Data Inicial |${dados}[DtInicial]|
    Pesquisar Todos Principios Ativos
    Selecionar Produto Para Auditar
    Adicionar Registro |${dados}[Descricao]| |${dados}[ReavaliarEm]| |${dados}[PendenteDe]|
    Preencher Regras da Auditoria do Produto |${dados}[NrDias]| |${dados}[TpAcao]| |${dados}[Mensagem]|
    Salvar Registro
    
    
