#################################################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/SCR5FMPREREMESSAFFCV-001 "3-tests\5 - FATURAMENTO\M_PRE_REMESSA_FFCV.robot"
# firefox:        robot -v browser:firefox -d ./5-results/SCR5FMPREREMESSAFFCV-001 "3-tests\5 - FATURAMENTO\M_PRE_REMESSA_FFCV.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/SCR5FMPREREMESSAFFCV-001 "3-tests\5 - FATURAMENTO\M_PRE_REMESSA_FFCV.robot"
# firefox:        robot -v browser:headlessfirefox -d ./5-results/SCR5FMPREREMESSAFFCV-001 "3-tests\5 - FATURAMENTO\M_PRE_REMESSA_FFCV.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/1-ATENDIMENTO/M_KIT_AVISO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
 # Suite registrada no gerenciador de dados
${suite}          m_kit_aviso
 # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMKITAVISO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMKITAVISO-001:Fluxo Principal" -d ./5-results/SCR1AMKITAVISO-001 "3-tests/1-ATENDIMENTO/M_KIT_AVISO.robot"
# robot -v browser:firefox -t "SCR1AMKITAVISO-001:Fluxo Principal" -d ./5-results/SCR1AMKITAVISO-001 "3-tests/1-ATENDIMENTO/M_KIT_AVISO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMKITAVISO-001"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Aviso de Cirurgia"@nprint @nao
    Conferencia de Itens de Checagem|${dados}[CodigoAvisoCirurgia]|
    Aba Kits Cirurgia|${dados}[Codigo]||${dados}[Quantidade]||${dados}[MsgEsperada1]|
    Apagar a massa pra reutilizacao da massa|${dados}[MsgEsperada2]||${dados}[MsgEsperada3]|





