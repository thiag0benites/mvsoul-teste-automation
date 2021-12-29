#################################################################################################################################################################
# Autor: Fernando Lima
# Decrição: Teste da tela Painel da Internação
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_PAINEL_LEITOS.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_PAINEL_LEITOS.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_PAINEL_LEITOS.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_PAINEL_LEITOS.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/C_PAINEL_LEITOS_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          c_painel_leitos
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1ACPAINELLEITOS-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1ACPAINELLEITOS-001:Fluxo Principal" -d ./5-results/SCR1ACPAINELLEITOS-001 "3-tests/1-ATENDIMENTO/C_PAINEL_LEITOS.robot"
# robot -v browser:firefox -t "SSCR1ACPAINELLEITOS-001:Fluxo Principal" -d ./5-results/SCR1ACPAINELLEITOS-001 "3-tests/1-ATENDIMENTO/C_PAINEL_LEITOS.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1ACPAINELLEITOS-001"
    Acessa a Tela Pela Busca |c_painel_leitos||Painel da Internação| @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Validar Dados Aba Situacao |${dados}[UnidadeInternacao]| |${dados}[Leito]| |${dados}[Leito2]| |${dados}[Leito3]| |${dados}[Leito4]|
    Click Aba Previsao |${dados}[DataPrevInternacao]|
    Validar Dados Aba Previsao |${dados}[NReserva]| |${dados}[Conve]| |${dados}[AvCir]|
    Click Aba Internados|${dados}[DataPrevAlta]|
    Validar Dados Aba Internados |${dados}[Atend]| |${dados}[Pac]| |${dados}[LeitoInterno]|
    Click Aba Cancelados
    Validar Dados Aba Cancelados |${dados}[ReservaCance]| |${dados}[PacCance]| |${dados}[MotCance]|