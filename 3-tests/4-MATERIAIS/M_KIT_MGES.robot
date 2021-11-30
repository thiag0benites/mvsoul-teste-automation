#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Teste da tela  Produtos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_KIT_MGES.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_KIT_MGES.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_KIT_MGES.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_KIT_MGES.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/4-MATERIAIS/M_KIT_MGES_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_kit_mges
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-4249 : Realizar cadastro de kit -tabela
# robot -v browser:chrome -t "SMF-4249 : Realizar cadastro de kit -tabela" -d ./5-results/SMF-4249 "3-tests/4-MATERIAIS/M_KIT_MGES.robot"
# robot -v browser:firefox -t "SMF-4249 : Realizar cadastro de kit -tabela" -d ./5-results/SMF-4249 "3-tests/4-MATERIAIS/M_KIT_MGES.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4249 "
    Acessar a tela "Materiais e Logística>Almoxarifado>Tabelas>Kits"@nprint @las
    Informar os dados nos campos
    Informar os campos Material Medicam
    Informar os campos Material Medicamento
    Informar os campos Equipamentos
    Informar os campos Sangue derivados
    Informar os campos Procedimentos
    Informar os campos Observacao |${dados}[MsgObs]|
    Informar os campos da caixa cirurgica
    Informar os campos Rouparia |${dados}[MsgRouparia]|
    Informar os campos Exame laboratorial 
    Informar os campos Exame de imagem
    Informar o campo Empresa
    Informar o campo Subgrupos
    Informar o campo Cirurgias
    Clicar no disquete |${dados}[MsgEsperada]|