#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela C_PRESTADOR
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/C_PRESTADOR "3-tests/7-APOIO_TI/C_PRESTADOR.robot"
# firefox: robot -v browser:firefox -d ./5-results/C_PRESTADOR "3-tests/7-APOIO_TI/C_PRESTADOR.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/C_PRESTADOR "3-tests/7-APOIO_TI/C_PRESTADOR.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/C_PRESTADOR "3-tests/7-APOIO_TI/C_PRESTADOR.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/7-APOIO_TI/C_PRESTADOR_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            C_PRESTADOR
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR7AMCPRESTADOR-001:Fluxo principal
# robot -v browser:chrome -t "SCR7AMCPRESTADOR-001:Fluxo principal" -d ./5-results/C_PRESTADOR "3-tests/7-APOIO_TI/C_PRESTADOR.robot"
# robot -v browser:firefox -t "SCR7AMCPRESTADOR-001:Fluxo principal" -d ./5-results/C_PRESTADOR "3-tests/7-APOIO_TI/C_PRESTADOR.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR7AMCPRESTADOR-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Clicar no botao Executar
    Navegar entre as abas do cadastro do prestador 
    Clicar no botao Imprimir Etiquetas 
    Clicar no botao Imprimir
