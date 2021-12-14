#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Conta do Paciente
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\C_CONTAS_TESOURARIA.robot"
# firefox: robot -v browser:firefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\C_CONTAS_TESOURARIA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\C_CONTAS_TESOURARIA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\C_CONTAS_TESOURARIA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/5-FATURAMENTO/C_CONTAS_TESOURARIA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            c_contas_tesouraria
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FCCONTASTESOURARIA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5FCCONTASTESOURARIA-001:Fluxo Principal" -d ./5-results/SCR5FCCONTASTESOURARIA-001 "3-tests/5-FATURAMENTO/C_CONTAS_TESOURARIA.robot"
# robot -v browser:firefox -t "SCR5FCCONTASTESOURARIA-001:Fluxo Principal" -d ./5-results/SCR5FCCONTASTESOURARIA-001 "3-tests/5-FATURAMENTO/C_CONTAS_TESOURARIA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FCCONTASTESOURARIA-001"
    Acessar a tela "Controladoria>Tesouraria>Tesouraria>Conta Particular"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Pesquisar Conta pelo Atendimento |${dados}[CdAtendimento]|
    Validar Campos Apos Consulta |${dados}[Paciente]| |${dados}[Prestador]| |${dados}[Convenio]| |${dados}[TipoConta]| |${dados}[GrupoProcedimento]|