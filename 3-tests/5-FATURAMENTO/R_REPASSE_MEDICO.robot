#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Cadastro de Convênios
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\R_REPASSE_MEDICO.robot"
# firefox: robot -v browser:firefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\R_REPASSE_MEDICO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\R_REPASSE_MEDICO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\R_REPASSE_MEDICO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/5-FATURAMENTO/R_REPASSE_MEDICO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            r_repasse_medico
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FRREPASSEMEDICO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5FRREPASSEMEDICO-001:Fluxo Principal" -d ./5-results/SCR5FRREPASSEMEDICO-001 "3-tests/5-FATURAMENTO/R_REPASSE_MEDICO.robot"
# robot -v browser:firefox -t "SCR5FRREPASSEMEDICO-001:Fluxo Principal" -d ./5-results/SCR5FRREPASSEMEDICO-001 "3-tests/5-FATURAMENTO/R_REPASSE_MEDICO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FRREPASSEMEDICO-001"
    #Acessa a Tela Pela Busca |M_CONVENIO||Convênios e Planos| @las
    Acessar a tela "Controladoria>Repasse Médico>Relatórios>Administrativos>Repasse de Prestadores"@nprint @las
    Selecionar Parametros de Impressao |${dados}[Convenio]| |${dados}[Prestador]| |${dados}[Competencia]|
    Realizar Impressao do Relatorio