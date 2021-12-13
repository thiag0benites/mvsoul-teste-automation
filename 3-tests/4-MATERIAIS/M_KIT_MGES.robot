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
    Informar os dados nos campos |${dados}[ItemSimilar]| |${dados}[TipoProducao]| |${dados}[CampoAtivo]|
    Informar os campos <Material Medicam> |${dados}[MaterialMedicam]|, <Material Medicamento> |${dados}[MaterialMedicamento]|, <Equipamentos> |${dados}[Equipamentos]|, <Sangue derivados> |${dados}[SangueDerivados]|, <Procedimentos> |${dados}[Procedimentos]|, <Observacao> |${dados}[MsgObs]|, <caixa cirurgica> |${dados}[CaixaCirurgica]|, <Rouparia> |${dados}[MsgRouparia]|, <Exame laboratorial> |${dados}[ExameLaboratorial]|, <Exame de imagem> |${dados}[ExameImagem]|
    Informar o campo <Empresa>, <Subgrupos>, <Cirurgias>
    Clicar no disquete |${dados}[MsgEsperada]|