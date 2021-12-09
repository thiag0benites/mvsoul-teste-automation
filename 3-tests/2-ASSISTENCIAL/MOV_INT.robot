#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Transferência de Paciente
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\MOV_INT.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\MOV_INT.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\MOV_INT.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\MOV_INT.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/MOV_INT_STEPS.robot
Resource            ../../1-resources/1-ATENDIMENTO/M_ENCAMINHA_OBSERVACAO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            mov_int
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMOVINT-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMOVINT-001:Fluxo Principal" -d ./5-results/SCR2AMOVINT-001 "3-tests/2-ASSISTENCIAL/MOV_INT.robot"
# robot -v browser:firefox -t "SCR2AMOVINT-001:Fluxo Principal" -d ./5-results/SCR2AMOVINT-001 "3-tests/2-ASSISTENCIAL/MOV_INT.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMOVINT-001"
    #Acessar a tela "Clínica e Assistencial>Gerenciamento de Unidades>Secretaria>Transferência de Leito"@nprint @las
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Selecionar Paciente |${dados}[Atendimento]|
    Validar campos Preenchidos Apos Consulta |${dados}[CdPaciente]| |${dados}[Paciente]| |${dados}[Plano]| |${dados}[Origem]| |${dados}[Medico]|
    Selecionar Leito
    Selecionar Motivo |${dados}[Motivo]|
    Selecionar Tipo de Limpeza |${dados}[TpLimpeza]|
    Clicar Botao Salvar

