#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/O_TRANSF_CC_RPA "3-tests\2 - ASSISTENCIAL\M_PREST_SETOR_SOLIC_EXA.robot"
# chrome:         robot -v browser:firefox -d ./5-results/O_TRANSF_CC_RPA "3-tests\2 - ASSISTENCIAL\M_PREST_SETOR_SOLIC_EXA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/O_TRANSF_CC_RPA "3-tests\2 - ASSISTENCIAL\M_PREST_SETOR_SOLIC_EXA.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/O_TRANSF_CC_RPA "3-tests\2 - ASSISTENCIAL\M_PREST_SETOR_SOLIC_EXA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources//2-ASSISTENCIAL/M_PREST_SETOR_SOLIC_EXA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
# Test Teardown     Encerra sessao


*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_prest_setor_solic_exa
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1MPRESTSETORSOLICEXA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1MPRESTSETORSOLICEXA-001:Fluxo Principal" -d ./5-results/SCR1MPRESTSETORSOLICEXA-001 "3-tests/2-ASSISTENCIAL/M_PREST_SETOR_SOLIC_EXA.robot"
# robot -v browser:firefox -t "SCR1MPRESTSETORSOLICEXA-001:Fluxo Principal" -d ./5-results/SCR1MPRESTSETORSOLICEXA-001 "3-tests/2-ASSISTENCIAL/M_PREST_SETOR_SOLIC_EXA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1MPRESTSETORSOLICEXA-001"
    Acessar a tela pela busca |${dados}[AcessoTela1]||${dados}[AcessoTela2]|@print @las
    Preenche Informacoes "Atendimento|${dados}[Atendimento]|", "Data Pedido|${dados}[DtPedido]|"
    Acesso Lancamento Exame "Numero Conselho|${dados}[NroConselho]|", "Nome Prestador|${dados}[Prestador]|", "Conselho|${dados}[Conselho]|", "Especialidade|${dados}[Especialidade]|"
    Acesso Lancamento Exame "Numero Conselho|${dados}[NroConselho1]|", "Nome Prestador|${dados}[Prestador]|", "Conselho|${dados}[Conselho]|", "Especialidade|${dados}[Especialidade]|"
    # Btn BtnExterno
    Preenche Lancamento Exame por Prestador "Setor Solicitante|${dados}[SetorSolic]|", "Exame|${dados}[Exame]|"

