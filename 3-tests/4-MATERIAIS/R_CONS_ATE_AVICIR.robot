#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela R_CONS_ATE_ACIVIR
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/R_CONS_ATE_ACIVIR "3-tests/4-MATERIAIS/R_CONS_ATE_ACIVIR.robot"
# firefox: robot -v browser:firefox -d ./5-results/R_CONS_ATE_ACIVIR "3-tests/4-MATERIAIS/R_CONS_ATE_ACIVIR.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/R_CONS_ATE_ACIVIR "3-tests/4-MATERIAIS/R_CONS_ATE_ACIVIR.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/R_CONS_ATE_ACIVIR "3-tests/4-MATERIAIS/R_CONS_ATE_ACIVIR.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/R_CONS_ATE_ACIVIR_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            R_CONS_ATE_ACIVIR
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MRCONSATEACIVIR-001:Fluxo principal
# robot -v browser:chrome -t "SCR4MRCONSATEACIVIR-001:Fluxo principal" -d ./5-results/R_CONS_ATE_ACIVIR "3-tests/4-MATERIAIS/R_CONS_ATE_AVICIR.robot"
# robot -v browser:firefox -t "SCR4MRCONSATEACIVIR-001:Fluxo principal" -d ./5-results/R_CONS_ATE_ACIVIR "3-tests/4-MATERIAIS/R_CONS_ATE_AVICIR.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MRCONSATEACIVIR-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Relatórios>Operacionais>Consumo das Movimentações>Produtos por Atendimento / Aviso de Cirurgia"@nprint @las
    Clique em impressao de Produtos por atendimento/aviso de cirurgia
    Realizar impressao da tela 