#################################################################################################################################################################
# Autor: Fernando Lima
# Decrição: Teste da tela Consulta de pacientes atendidos na Urgência/Emergência (Std)
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\CON_ATEND_URG.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\CON_ATEND_URG.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\CON_ATEND_URG.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\CON_ATEND_URG.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/CON_ATEND_URG_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            con_atend_urg
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1ACONATENDURG-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1ACONATENDURG-001:Fluxo Principal" -d ./5-results/SCR1ACONATENDURG "3-tests/1-ATENDIMENTO/CON_ATEND_URG.robot"
# robot -v browser:firefox -t "SCR1ACONATENDURG-001:Fluxo Principal" -d ./5-results/SCR1ACONATENDURG "3-tests/1-ATENDIMENTO/CON_ATEND_URG.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1ACONATENDURG-001"
    Acessa a Tela Pela Busca |con_atend_urg||Pacientes Atendidos na Urgência/Emergência| @las
    Validar Acesso a Tela |${dados}[NomeTela]| 
    Preencher Campo Data |${dados}[DataAtendimento]| 
    Click Botao Pesquisar
    Validar Dados Pos Pesquisa |${dados}[HoraAtendimento]| |${dados}[NomePac]| |${dados}[Procedimento]| |${dados}[OrigemAtend]|
    Sleep    5