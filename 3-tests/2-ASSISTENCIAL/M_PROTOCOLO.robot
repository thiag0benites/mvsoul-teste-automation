#################################################################################################################################################################
# Autor: Marcos Costa
# Descrição: O Caso de Teste tem Como Objetivo Cadastrar Protocolos.
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -t "SCR2AMPROTOCOLOA001:Fluxo Principal" -d ./5-results/SCR2AMPROTOCOLOA001 "3-tests/2-ASSISTENCIAL/M_PROTOCOLO.robot"
# chrome:         robot -v browser:firefox -t "SCR2AMPROTOCOLOA001:Fluxo Principal" -d ./5-results/SCR2AMPROTOCOLOA001 "3-tests/2-ASSISTENCIAL/M_PROTOCOLO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -t "SCR2AMPROTOCOLOA001:Fluxo Principal" -d ./5-results/SCR2AMPROTOCOLOA001 "3-tests/2-ASSISTENCIAL/M_PROTOCOLO.robot"
# chrome:         robot -v browser:headlessfirefox -t "SCR2AMPROTOCOLOA001:Fluxo Principal" -d ./5-results/SCR2AMPROTOCOLOA001 "3-tests/2-ASSISTENCIAL/M_PROTOCOLO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/2-ASSISTENCIAL/M_PROTOCOLO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}         m_protocolo
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
# 
SCR2AMPROTOCOLOA001:Fluxo Principal
    # robot -v browser:chrome -t "SCR2AMPROTOCOLOA001:Fluxo Principal" -d ./5-results/SCR2AMPROTOCOLOA001 "3-tests/2-ASSISTENCIAL/M_PROTOCOLO.robot"
    # robot -v browser:firefox -t "SCR2AMPROTOCOLOA001:Fluxo Principal" -d ./5-results/SCR2AMPROTOCOLOA001 "3-tests/2-ASSISTENCIAL/M_PROTOCOLO.robot"
    ${dados}  Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMPROTOCOLOA001"
    Acessa a Tela Pela Busca |M_PROTOCOLO||Protocolo| @las
    Informa na Tela Protocolo <Desc> |${dados}[Descri]| <Dias> |${dados}[Dias]| <Ciclo> |${dados}[Ciclo]| <Dt Inicio> |${dados}[DtInicio]| <Dt Valid> |${dados}[DtValid]| <Ativo> |${dados}[Ativo]| <IdadeInicial> |${dados}[IdadeInicial]| <IdadeFinal> |${dados}[IdadeFinal]| <Salvar> |${dados}[Salvar]| <DocPadrao> |${dados}[DocPadrao]| <QtDias> |${dados}[QtDias]|