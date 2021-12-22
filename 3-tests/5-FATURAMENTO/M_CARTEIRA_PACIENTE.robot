#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Etapas do teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_CARTEIRA_PACIENTE "3-tests/5-FATURAMENTO/M_CARTEIRA_PACIENTE.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_CARTEIRA_PACIENTE "3-tests/5-FATURAMENTO/M_CARTEIRA_PACIENTE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_CARTEIRA_PACIENTE "3-tests/5-FATURAMENTO/M_CARTEIRA_PACIENTE.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_CARTEIRA_PACIENTE "3-tests/5-FATURAMENTO/M_CARTEIRA_PACIENTE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/5-FATURAMENTO/M_CARTEIRA_PACIENTE_STEPS.robot


 ### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            m_carteira_paciente
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMCARTEIRAPACIENTE-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5FMCARTEIRAPACIENTE-001:Fluxo Principal" -d ./5-results/SCR5FMCARTEIRAPACIENTE-001 "3-tests/5-FATURAMENTO/M_CARTEIRA_PACIENTE.robot"
# robot -v browser:firefox -t "SCR5FMCARTEIRAPACIENTE-001:Fluxo Principal" -d ./5-results/SCR5FMCARTEIRAPACIENTE-001 "3-tests/5-FATURAMENTO/M_CARTEIRA_PACIENTE.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMCARTEIRAPACIENTE-001"
    Acessa a Tela Pela Busca |ATEURG||Atendimento| @las
    Criacao da carteira paciente |${dados}[Nome]| |${dados}[Medico]| |${dados}[Carteira]| |${dados}[Validade]| |${dados}[Ativo]| |${dados}[MsgLida]|