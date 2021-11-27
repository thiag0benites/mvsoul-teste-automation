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
    Preencher Estoque |66|
    Preencher Fornecedor |3911|
    Preencher Periodo Inicial para Entrega |01/12/2021|
    Preencher Periodo Final para Entrega |10/12/2021|
    Preencher Condicao |82|
    Marcar o CheckBox Servico
    Informar Valor Total |100|
    Informar Valor Desconto |0|
    Informar Valor ICMS |0|
    CLicar no Botao Servico
    Preencher Servico |1273|
    Preencher Valor Servico |100|
    Salvar Registro
    Sleep   20
  