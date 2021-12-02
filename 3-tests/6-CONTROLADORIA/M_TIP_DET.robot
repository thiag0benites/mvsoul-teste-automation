#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_TIP_DET
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_TIP_DET "3-tests/6-CONTROLADORIA/M_TIP_DET.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_TIP_DET "3-tests/6-CONTROLADORIA/M_TIP_DET.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_TIP_DET "3-tests/6-CONTROLADORIA/M_TIP_DET.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_TIP_DET "3-tests/6-CONTROLADORIA/M_TIP_DET.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/6-CONTROLADORIA/M_TIP_DET_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
##Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_TIP_DET
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6COMTIPDET-001:Fluxo principal
# robot -v browser:chrome -t "SCR6COMTIPDET-001:Fluxo principal" -d ./5-results/M_TIP_DET "3-tests/6-CONTROLADORIA/M_TIP_DET.robot"
# robot -v browser:firefox -t "SCR6COMTIPDET-001:Fluxo principal" -d ./5-results/M_TIP_DET "3-tests/6-CONTROLADORIA/M_TIP_DET.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6COMTIPDET-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Preencher os campos |${dados}[descricao]|,|${dados}[dias]|,|${dados}[valorMin]|,|${dados}[valorMax]|
    Preencher os inputs da tela |${dados}[fornecedor]|,|${dados}[contaContabil]|,|${dados}[contaCusto]|,|${dados}[contaContabilDespesa]|,|${dados}[tipoDocumento]|
    Preencher a tabela |${dados}[vlFaixa]|,|${dados}[vlPercentual]|,|${dados}[vlDeducao]|,|${dados}[vlDeducaoPendente]|
    Clicar no botao Salvar do menu
    Valida cadastro realizado na tela