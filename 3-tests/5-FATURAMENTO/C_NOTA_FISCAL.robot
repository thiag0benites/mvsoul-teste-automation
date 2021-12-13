#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Nota Fiscal
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\C_NOTA_FISCAL.robot"
# firefox: robot -v browser:firefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\C_NOTA_FISCAL.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\C_NOTA_FISCAL.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\C_NOTA_FISCAL.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/5-FATURAMENTO/C_NOTA_FISCAL_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          C_NOTA_FISCAL
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FCNOTAFISCAL-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5FCNOTAFISCAL-001:Fluxo Principal" -d ./5-results/SCR5FCNOTAFISCAL-001 "3-tests/5-FATURAMENTO/C_NOTA_FISCAL.robot"
# robot -v browser:firefox -t "SCR5FCNOTAFISCAL-001:Fluxo Principal" -d ./5-results/SCR5FCNOTAFISCAL-001 "3-tests/5-FATURAMENTO/C_NOTA_FISCAL.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FCNOTAFISCAL-001"
    #Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Consultas>Notas Fiscais"@nprint @las
    Acessar a Tela Pela Busca |c_nota_fiscal||Notas Fiscais| @las
    Validar Acesso a Tela |Nota Fiscal|
    Preencher Nota |${dados}[NotaFiscal]|
    Validar Consulta Pelos Resultados |${dados}[Numero]| |${dados}[Cidade]| |${dados}[UsuarioEmitiu]|