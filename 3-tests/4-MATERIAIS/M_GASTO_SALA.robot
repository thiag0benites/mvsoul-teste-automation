
#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela M_GASTO_SALA - Devolução de produtos para fornecedores
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_GASTO_SALA "3-tests\4-MATERIAIS\M_GASTO_SALA.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_GASTO_SALA "3-tests\4-MATERIAIS\M_GASTO_SALA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_GASTO_SALA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_GASTO_SALA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/M_GASTO_SALA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_GASTO_SALA
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCRN4MMGASTOSALA-001:Fluxo Principal
# robot -v browser:chrome -t "SCRN4MMGASTOSALA-001:Fluxo Principal" -d ./5-results/SCRN4MMGASTOSALA-001 "3-tests/4-MATERIAIS/M_GASTO_SALA.robot"
# robot -v browser:firefox -t "SCRN4MMGASTOSALA-001:Fluxo Principal" -d ./5-results/SCRN4MMGASTOSALA-001 "3-tests/4-MATERIAIS/M_GASTO_SALA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCRN4MMGASTOSALA-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Movimentações>Saída de Produtos>Gasto de sala"@nprint @las
    Clicar no botao[pesquisar]
    Preencher o campo Aviso Cirurgia|${dados}[aviso]|
    Clicar no botao[executar]
    Captura codigo|${suite}|${dados}[id]|
    Clicar no botao[imprimir]
    Clicar no botao[imprimir2]
    Valida aba browser