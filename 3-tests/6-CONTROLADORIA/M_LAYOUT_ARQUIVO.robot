#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_LAYOUT_ARQUIVO
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_LAYOUT_ARQUIVO "3-tests/6-CONTROLADORIA/M_LAYOUT_ARQUIVO.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_LAYOUT_ARQUIVO "3-tests/6-CONTROLADORIA/M_LAYOUT_ARQUIVO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_LAYOUT_ARQUIVO "3-tests/6-CONTROLADORIA/M_LAYOUT_ARQUIVO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_LAYOUT_ARQUIVO "3-tests/6-CONTROLADORIA/M_LAYOUT_ARQUIVO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/6-CONTROLADORIA/M_LAYOUT_ARQUIVO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
#Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_LAYOUT_ARQUIVO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6COMLAYOUTARQUIVO-001:Fluxo principal
# robot -v browser:chrome -t "SCR6COMLAYOUTARQUIVO-001:Fluxo principal" -d ./5-results/M_LAYOUT_ARQUIVO "3-tests/6-CONTROLADORIA/M_LAYOUT_ARQUIVO.robot"
# robot -v browser:firefox -t "SCR6COMLAYOUTARQUIVO-001:Fluxo principal" -d ./5-results/M_LAYOUT_ARQUIVO "3-tests/6-CONTROLADORIA/M_LAYOUT_ARQUIVO.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6COMLAYOUTARQUIVO-001"
    Acessar a tela "Controladoria>Intercâmbio Eletrônico de Arquivos>Arquivos>Bancos>Remessa>Arquivos de Pagamentos e Cobranças"@nprint @las
    