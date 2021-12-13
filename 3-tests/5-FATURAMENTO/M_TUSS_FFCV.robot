#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_TUSS_FFCV
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_TUSS_FFCV "3-tests/5-FATURAMENTO/M_TUSS_FFCV.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_TUSS_FFCV "3-tests/5-FATURAMENTO/M_TUSS_FFCV.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_TUSS_FFCV "3-tests/5-FATURAMENTO/M_TUSS_FFCV.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_TUSS_FFCV "3-tests/5-FATURAMENTO/M_TUSS_FFCV.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/5-FATURAMENTO/M_TUSS_FFCV_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_TUSS_FFCV
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMTUSSFFCV-001:Fluxo principal
# robot -v browser:chrome -t "SCR5FMTUSSFFCV-001:Fluxo principal" -d ./5-results/M_TUSS_FFCV "3-tests/5-FATURAMENTO/M_TUSS_FFCV.robot"
# robot -v browser:firefox -t "SCR5FMTUSSFFCV-001:Fluxo principal" -d ./5-results/M_TUSS_FFCV "3-tests/5-FATURAMENTO/M_TUSS_FFCV.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMTUSSFFCV-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Preencher o campo Terminologia |${dados}[terminologia]|
    Clicar no botao de pesquisa da tela
    Clicar no botao Adicionar
    Preencher os campos da tabela |${dados}[codigo]|,|${dados}[descricao]|,|${dados}[empresa]|,|${dados}[convenio]|,|${dados}[procedimento]|,|${dados}[inicioVigencia]|
    Clicar no botao Salvar 
    Validar cadastro realizado |${dados}[mensagem]|