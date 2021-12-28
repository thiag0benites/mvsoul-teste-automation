#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Etapas do teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_NOTA_FISCAL "3-tests/5-FATURAMENTO/M_NOTA_FISCAL.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_NOTA_FISCAL "3-tests/5-FATURAMENTO/M_NOTA_FISCAL.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_NOTA_FISCAL "3-tests/5-FATURAMENTO/M_NOTA_FISCAL.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_NOTA_FISCAL "3-tests/5-FATURAMENTO/M_NOTA_FISCAL.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/5-FATURAMENTO/M_NOTA_FISCAL_STEPS.robot
 ### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_nota_fiscal
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMNOTAFISCAL-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5FMNOTAFISCAL-001:Fluxo Principal" -d ./5-results/SCR5FMNOTAFISCAL-001 "3-tests/5-FATURAMENTO/M_NOTA_FISCAL.robot"
# robot -v browser:firefox -t "SCR5FMNOTAFISCAL-001:Fluxo Principal" -d ./5-results/SCR5FMNOTAFISCAL-001 "3-tests/5-FATURAMENTO/M_NOTA_FISCAL.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMNOTAFISCAL-001"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Conta Ambulatorial>Conta do Atendimento"@nprint @las
    Preencha o Atendimento |${dados}[Atendimento]|  
    Clique em imprimir     
    Verificacao da Conversão de RPS em NFe
    Cancelar nota fiscal |${dados}[MsgLida]|