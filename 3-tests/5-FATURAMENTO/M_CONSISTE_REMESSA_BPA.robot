#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Cadastro de Convênios
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_CONSISTE_REMESSA_BPA.robot"
# firefox: robot -v browser:firefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_CONSISTE_REMESSA_BPA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_CONSISTE_REMESSA_BPA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_CONSISTE_REMESSA_BPA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/5-FATURAMENTO/M_CONSISTE_REMESSA_BPA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_consiste_remessa_bpa
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMCONSISTEREMESSABPA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5FMCONSISTEREMESSABPA-001:Fluxo Principal" -d ./5-results/SCR5FMCONSISTEREMESSABPA-001 "3-tests/5-FATURAMENTO/M_CONSISTE_REMESSA_BPA.robot"
# robot -v browser:firefox -t "SCR5FMCONSISTEREMESSABPA-001:Fluxo Principal" -d ./5-results/SCR5FMCONSISTEREMESSABPA-001 "3-tests/5-FATURAMENTO/M_CONSISTE_REMESSA_BPA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMCONSISTEREMESSABPA-001"
    #Acessa a Tela Pela Busca |M_CONVENIO||Convênios e Planos| @las
    Acessar a tela "Faturamento>Faturamento Ambulatorial SUS (BPA e APAC)>Faturamento>Exportação BPA(Nova)"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTelaGeraBPA]|
    Preencher Dados da Producao BPA |${dados}[Competencia]| |${dados}[Remessa]| |${dados}[MensagemCriticas]|
    Acessar Tela M_CONSISTE_REMESSA_BPA |${dados}[NomeTelaRemessa]| 
    Validar Criticas Exibidas da Remessa |${dados}[Critica1]| |${dados}[Critica2]|
    Imprimir Relatorio



 