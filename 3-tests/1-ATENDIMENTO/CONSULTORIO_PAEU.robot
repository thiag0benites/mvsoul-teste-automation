#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Teste da tela Entrada dos Produtos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO/ "3-tests/1-ATENDIMENTO/CONSULTORIO_PAEU.robot
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO/ "3-tests/1-ATENDIMENTO/CONSULTORIO_PAEU.robot
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO/ "3-tests/1-ATENDIMENTO/CONSULTORIO_PAEU.robot
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO/ "3-tests/1-ATENDIMENTO/CONSULTORIO_PAEU.robot
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/1-ATENDIMENTO/CONSULTORIO_PAEU_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessao
# Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            consultorio_paeu
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SRC1CONSULTORIOPAEU-001:Fluxo Principal
# robot -v browser:chrome -t "SRC1CONSULTORIOPAEU-001:Fluxo Principal" -d ./5-results/SRC1CONSULTORIOPAEU-001 "3-tests/1-ATENDIMENTO/CONSULTORIO_PAEU.robot"
# robot -v browser:firefox -t "SRC1CONSULTORIOPAEU-001:Fluxo Principal" -d ./5-results/SRC1CONSULTORIOPAEU-001 "3-tests/1-ATENDIMENTO/CONSULTORIO_PAEU.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SRC1CONSULTORIOPAEU-001"
    Acessar a tela "Atendimento>Urgência e Emergência>Atendimento>Consultório"@print @las
    Acesso Diagnostico
    Preenche Diagnostico Informacoes "HDA|${dados}[Informacoes]|", "Exame Fisico|${dados}[Informacoes]|", "Tratamento|${dados}[Informacoes]|", "Diagnostico|${dados}[Informacoes]|", "Validacao|${dados}[Validacao]|"