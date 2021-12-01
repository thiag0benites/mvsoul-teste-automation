#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Cadastro de Convênios
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_CONVENIO.robot"
# firefox: robot -v browser:firefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_CONVENIO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_CONVENIO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_CONVENIO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/5-FATURAMENTO/M_CONVENIO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_convenio
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMCONVENIO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5FMCONVENIO-001:Fluxo Principal" -d ./5-results/SCR5FMCONVENIO-001 "3-tests/5-FATURAMENTO/M_CONVENIO.robot"
# robot -v browser:firefox -t "SCR5FMCONVENIO-001:Fluxo Principal" -d ./5-results/SCR5FMCONVENIO-001 "3-tests/5-FATURAMENTO/M_CONVENIO.robot"
    #${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMCONVENIO-001"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Gerais>Convênios e Planos"@nprint @las
    Validar Acesso a Tela |Cadastro de Convênios|
    Cancelar Consulta
    Prencher Dados Cadastrais
    Preencher Dados do Faturamento
    Preencher Enderecos Adicionais
    Acessar Aba Complemento
    Sleep  5