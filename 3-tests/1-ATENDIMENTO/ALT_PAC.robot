#################################################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2 - ASSISTENCIAL\C_LISTAGEM_CONFERENCIA.robot"
# firefox:         robot -v browser:firefox -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2 - ASSISTENCIAL\C_LISTAGEM_CONFERENCIA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\2 - ASSISTENCIAL\C_LISTAGEM_CONFERENCIA.robot"
# firefox:         robot -v browser:headlessfirefox -d ./5-results/C_LISTAGEM_CONFERENCIA_RPA_STEPS "3-tests\2 - ASSISTENCIAL\C_LISTAGEM_CONFERENCIA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes

Resource            ../../1-resources/1-ATENDIMENTO/ALT_PAC_STEPS.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao


*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          alt_pac
# Recebe dados do gerenciador
${dados}

*** Test Case ***

SCR1AALT_PAC-001:Fluxo Principal          #SMF-8286 : Realizar Alta Hospitalar Preenchendo Todos os Campos da Tela 
# robot -v browser:chrome -t "SCR1AALT_PAC-001:Fluxo Principal" -d ./5-results/SCR1AALT_PAC-001 "3-tests/1-ATENDIMENTO/ALT_PAC.robot"
# robot -v browser:firefox -t "SCR1AALT_PAC-001:Fluxo Principal" -d ./5-results/SCR1AALT_PAC-001 "3-tests/1-ATENDIMENTO/ALT_PAC.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AALT_PAC"
    Acessar a tela "Atendimento>Internação>Atendimento>Alta>Efetivação>Alta Hospitalar"@nprint @nao
    Campos Obrigatorios a serem preenchidos e Salvar |${dados}[Atendimento]||${dados}[MotivoDaAlta]||${dados}[TipoDeLimpeza]||${dados}[ObservacaoDaAlta]||${dados}[CIDPrincipal]||${dados}[Mensagem1]|
    Comprovante da Alta Hospitalar do Paciente |${dados}[SaidaDoRelatorio]||${dados}[Mensagem2]|




