#################################################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Teste da tela  Cadastro de Ordem de Compras
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\C_CONSOLIDACAO.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\C_CONSOLIDACAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\C_CONSOLIDACAO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\C_CONSOLIDACAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/4-MATERIAIS/C_CONSOLIDACAO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao
 
*** Variable ***    

# Suite registrada no gerenciador de dados
#${suite}
# Recebe dados do gerenciador
#${dados}

*** Test Case ***
SCR4MCCONSOLIDACAO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MCCONSOLIDACAO-001:Fluxo Principal" -d ./5-results/SCR4MCCONSOLIDACAO-001 "3-tests/4-MATERIAIS/C_CONSOLIDACAO.robot"
# robot -v browser:firefox -t "SCR4MCCONSOLIDACAO-001:Fluxo Principal" -d ./5-results/SCR4MCCONSOLIDACAO-001 "3-tests/4-MATERIAIS/C_CONSOLIDACAO.robot"
    #${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MCCONSOLIDACAO-001"
    
    #Acessar a tela "Materiais e Logística>Almoxarifado>Consultas>Estoques dos Produtos>Dados Consolidados" @nprint @las
    Acessa a Tela Pela Busca |C_CONSOLIDACAO||Dados Consolidados| @las
    Preencher parametros de pesquisa
  