#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela M_DEVSET - Devolução de produtos para fornecedores
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_DEVSET "3-tests\4-MATERIAIS\M_DEVSET.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_DEVSET "3-tests\4-MATERIAIS\M_DEVSET.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_DEVSET.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_DEVSET.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/M_DEVSET_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}           m_devset
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-7630:Fluxo Principal
# robot -v browser:chrome -t "SMF-7630:Fluxo Principal" -d ./5-results/SMF-7630 "3-tests/4-MATERIAIS/M_DEVSET.robot"
# robot -v browser:firefox -t "SMF-7630:Fluxo Principal" -d ./5-results/SMF-7630 "3-tests/4-MATERIAIS/M_DEVSET.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-7630"
    Acessar a tela "Materiais e Logística>Almoxarifado>Movimentações>Devoluções>De Setores"@nprint @las
    Preencher os campos Estoque|${dados}[estoque]|, Setor|${dados}[setor]|, Motivo de Devolucao|${dados}[motDevolucao]|
    Preencher o campo Produto|${dados}[produto]|, Qtde. Recebida.|${dados}[quantidade]|
    Clicar no botao[Salvar]
    Captura codigo|${suite}|${dados}[id]|