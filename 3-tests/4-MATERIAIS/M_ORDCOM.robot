#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela  Cadastro de Ordem de Compras
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_PRODUTO.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_PRODUTO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_PRODUTO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_PRODUTO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/4-MATERIAIS/M_ORDCOM_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_produto
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMORDCOM-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MMORDCOM-001:Fluxo Principal" -d ./5-results/SCR4MMORDCOM-001 "3-tests/4-MATERIAIS/M_ORDCOM.robot"
# robot -v browser:firefox -t "SCR4MMORDCOM-001:Fluxo Principal" -d ./5-results/SCR4MMORDCOM-001 "3-tests/4-MATERIAIS/M_ORDCOM.robot"
    #${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMORDCOM-001"
    
    Acessar a tela "Materiais e Logística>Compras>Compras>Ordem de Compra>Cadastro"@nprint @las
    
    Validar Acesso a Tela |Ordem de Compras|
    
    Preencher Estoque , Fornecedor, e PeriodoEntrega |66| |3911| |01/12/2021| |10/12/2021|
    
    Preencher Condicao e Marcar Servico |82|
  
    Informar Valor Total , Desconto e ICMS |100| |0| |0|

    CLicar em Servico e Preencher Servico e Valor |1273| |100|

    Salvar Registro
    
  