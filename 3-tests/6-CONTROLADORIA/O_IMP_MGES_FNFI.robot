#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela O_IMP_MGES_FNFI
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/O_IMP_MGES_FNFI "3-tests\6-CONTROLADORIA\O_IMP_MGES_FNFI.robot"
# firefox: robot -v browser:firefox -d ./5-results/O_IMP_MGES_FNFI "3-tests\6-CONTROLADORIA\O_IMP_MGES_FNFI.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\O_IMP_MGES_FNFI.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\O_IMP_MGES_FNFI.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/6-CONTROLADORIA/O_IMP_MGES_FNFI_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}           O_IMP_MGES_FNFI
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-5466:Fluxo Principal
# robot -v browser:chrome -t "SMF-5466:Fluxo Principal" -d ./5-results/SMF-5466 "3-tests/6-CONTROLADORIA/O_IMP_MGES_FNFI.robot"
# robot -v browser:firefox -t "SMF-5466:Fluxo Principal" -d ./5-results/SMF-5466 "3-tests/6-CONTROLADORIA/O_IMP_MGES_FNFI.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5466"
    Acessar |${dados}[tela]|@nprint @las
    Clicar no botao [Pesquisar]
    Preencher os campos Empresa|${dados}[empresa]|, Fornecedor|${dados}[fornecedor]|
    Clicar no botao [Executar]
    Selecionar CheckBox que deseja importar
    Clicar no botao [Importar dados]
    Clicar no botao [Sim]
    Clicar no botao [Sim2]
    Clicar no botao [Imprimir]
    Valida aba do browser