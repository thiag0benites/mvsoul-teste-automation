#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_REG_PROC_INV "3-tests\2 - ASSISTENCIAL\M_REG_PROC_INV.robot"
# chrome:         robot -v browser:firefox -d ./5-results/M_REG_PROC_INV "3-tests\2 - ASSISTENCIAL\M_REG_PROC_INV.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_REG_PROC_INV "3-tests\2 - ASSISTENCIAL\M_REG_PROC_INV.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_REG_PROC_INV "3-tests\2 - ASSISTENCIAL\M_REG_PROC_INV.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources//2-ASSISTENCIAL/M_REG_PROC_INV_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao



*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_reg_proc_inv
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMREGPROCINV-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMREGPROCINV-001:Fluxo Principal" -d ./5-results/SCR1AMREGPROCINV-001 "3-tests/2-ASSISTENCIAL/M_REG_PROC_INV.robot"
# robot -v browser:firefox -t "SCR1AMREGPROCINV-001:Fluxo Principal" -d ./5-results/SCR1AMREGPROCINV-001 "3-tests/2-ASSISTENCIAL/M_REG_PROC_INV.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMREGPROCINV-001"
    Acesso Atendimento
    Acessar a tela "Procedimentos Invasivos"@print @las
    # Acessar a tela pela busca |M_REG_PROC_INV||Procedimentos Invasivos]|@print @las
    Preencher Informacoes "Cod Atendimento|${dados}[CodAtend]|", "Codigo Procedimento|${dados}[CodProced]|", "Data Inicial|${dados}[Data]|", "Hora Inicial|${dados}[HoraInicial]|", "Data Final|${dados}[Data]|", "Hora Final|${dados}[HoraFinal]|"
    Preencher Campos "Usuario Aplicacao|${dados}[UsuAplicacao]|", "Usuario Retirada|${dados}[UsuRetirada]|", "Justificativa|${dados}[Justificativa]|", "Registro Infeccao|${dados}[RegInfeccao]|", "Validar Registro|${dados}[MsgValid]|"
