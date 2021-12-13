#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Alteracao de Tipo de Atendimento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_LEITOS_GERENCIAL.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_LEITOS_GERENCIAL.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_LEITOS_GERENCIAL.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_LEITOS_GERENCIAL.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/C_LEITOS_GERENCIAL_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          C_LEITOS_GERENCIAL
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1ACLEITOSGERENCIAL-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1ACLEITOSGERENCIAL-001:Fluxo Principal" -d ./5-results/SCR1ACLEITOSGERENCIAL-001 "3-tests/1-ATENDIMENTO/C_LEITOS_GERENCIAL.robot"
# robot -v browser:firefox -t "SCR1ACLEITOSGERENCIAL-001:Fluxo Principal" -d ./5-results/SCR1ACLEITOSGERENCIAL-001 "3-tests/1-ATENDIMENTO/C_LEITOS_GERENCIAL.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1ACLEITOSGERENCIAL-001"
    Acessar a tela "Atendimento>Internação>Consultas>Painel de Leitos>Gerencial"@nprint @las
    Validar Acesso
    Navegar entre Campos
    Acessar e Validar Leitos |${dados}[Leito1]| |${dados}[Leito2]| |${dados}[Leito3]|

SCR1ACLEITOSGERENCIAL-002:Analise Ocupacao
# robot -v browser:chrome -t "SCR1ACLEITOSGERENCIAL-002:Analise Ocupacao" -d ./5-results/SCR1ACLEITOSGERENCIAL-002 "3-tests/1-ATENDIMENTO/C_LEITOS_GERENCIAL.robot"
# robot -v browser:firefox -t "SCR1ACLEITOSGERENCIAL-002:Analise Ocupacao" -d ./5-results/SCR1ACLEITOSGERENCIAL-002 "3-tests/1-ATENDIMENTO/C_LEITOS_GERENCIAL.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1ACLEITOSGERENCIAL-002"
    Acessar a tela "Atendimento>Internação>Consultas>Painel de Leitos>Gerencial"@nprint @las
    Validar Acesso
    Navegar entre Campos Analise Ocupacao
    Acessar e Validar Leitos Ocupacao |${dados}[Leito1]| |${dados}[Leito2]| |${dados}[Leito3]|

SCR1ACLEITOSGERENCIAL-003:Servico
# robot -v browser:chrome -t "SCR1ACLEITOSGERENCIAL-003:Servico" -d ./5-results/SCR1ACLEITOSGERENCIAL-003 "3-tests/1-ATENDIMENTO/C_LEITOS_GERENCIAL.robot"
# robot -v browser:firefox -t "SCR1ACLEITOSGERENCIAL-003:Servico" -d ./5-results/SCR1ACLEITOSGERENCIAL-003 "3-tests/1-ATENDIMENTO/C_LEITOS_GERENCIAL.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1ACLEITOSGERENCIAL-003"
    Acessar a tela "Atendimento>Internação>Consultas>Painel de Leitos>Gerencial"@nprint @las
    Validar Acesso
    Navegar entre Campos Servico
    Acessar e Validar Leitos Servico |${dados}[Leito1]| |${dados}[Leito2]| |${dados}[Leito3]|