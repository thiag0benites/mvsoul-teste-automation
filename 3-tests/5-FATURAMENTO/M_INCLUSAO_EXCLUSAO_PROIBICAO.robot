#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela  Inclusao e Exclusao de Proibição
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_INCLUSAO_EXCLUSAO_PROIBICAO.robot"
# firefox: robot -v browser:firefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_INCLUSAO_EXCLUSAO_PROIBICAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_INCLUSAO_EXCLUSAO_PROIBICAO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_INCLUSAO_EXCLUSAO_PROIBICAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/5-FATURAMENTO/M_INCLUSAO_EXCLUSAO_PROIBICAO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            M_INCLUSAO_EXCLUSAO_PROIBICAO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMINCLUSAOEXCLUSAOPROIBICAO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5FMINCLUSAOEXCLUSAOPROIBICAO-001:Fluxo Principal" -d ./5-results/SCR5FMINCLUSAOEXCLUSAOPROIBICAO-001 "3-tests/5-FATURAMENTO/M_INCLUSAO_EXCLUSAO_PROIBICAO.robot"
# robot -v browser:firefox -t "SCR5FMINCLUSAOEXCLUSAOPROIBICAO-001:Fluxo Principal" -d ./5-results/SCR5FMINCLUSAOEXCLUSAOPROIBICAO-001 "3-tests/5-FATURAMENTO/M_INCLUSAO_EXCLUSAO_PROIBICAO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMINCLUSAOEXCLUSAOPROIBICAO-001"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Personalizados>Proibições de Grupo ou Procedimentos" @las
    #Acessar a tela pela busca |M_INCLUSAO_EXCLUSAO_PROIBICAO||Central de Guias| @las
 
    Selecionar Procedimento, Convenio, Plano e Setores |${dados}[Procedimento]| |${dados}[Convenio]|
    Preencher Vigencia Automaticamente
    Incluir e Validar |${dados}[Justificativa]| |${dados}[MsgSalva]|