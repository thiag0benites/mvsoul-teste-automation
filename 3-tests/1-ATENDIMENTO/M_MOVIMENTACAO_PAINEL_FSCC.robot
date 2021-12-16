#################################################################################################################################################################
# Autor: Fernando Lima
# Decrição: Teste da tela Movimentação Painel Centro Cirúrgico
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_MOVIMENTACAO_PAINEL_FSCC.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_MOVIMENTACAO_PAINEL_FSCC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_MOVIMENTACAO_PAINEL_FSCC.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_MOVIMENTACAO_PAINEL_FSCC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/M_MOVIMENTACAO_PAINEL_FSCC_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_movimentacao_painel_fscc
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMMOVIMENTACAOPAINELFSCC-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMMOVIMENTACAOPAINELFSCC-001:Fluxo Principal" -d ./5-results/SCR1AMMOVIMENTACAOPAINELFSCC-001 "3-tests/1-ATENDIMENTO/M_MOVIMENTACAO_PAINEL_FSCC.robot"
# robot -v browser:firefox -t "SCR1AMMOVIMENTACAOPAINELFSCC-001:Fluxo Principal" -d ./5-results/SCR1AMMOVIMENTACAOPAINELFSCC-001 "3-tests/1-ATENDIMENTO/M_MOVIMENTACAO_PAINEL_FSCC.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMMOVIMENTACAOPAINELFSCC-001"
    Acessa a Tela Pela Busca |M_MOVIMENTACAO_PAINEL_FSCC||Movimentação Painel Centro Cirúrgico| @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Entrada de Datas |${dados}[DtInicio]| |${dados}[DtFim]|
    Click Botao Pesquisar
    Validar Dados Pos Pesquisa |${dados}[Aviso]| |${dados}[Sala]| |${dados}[Cirurgiao]| |${dados}[CodCirurgia]| |${dados}[Cirurgia]|
    
