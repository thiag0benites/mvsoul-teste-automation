#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Exclusão de Pedido de Exames
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_EXC_PED_LAB.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_EXC_PED_LAB.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_EXC_PED_LABrobot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_EXC_PED_LAB.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_EXC_PED_LAB_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            M_EXC_PED_LAB
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMEXCPEDLAB-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMEXCPEDLAB-001:Fluxo Principal" -d ./5-results/SCR2AMEXCPEDLAB-001 "3-tests/2-ASSISTENCIAL/M_EXC_PED_LAB.robot"
# robot -v browser:firefox -t "SCR2AMEXCPEDLAB-001:Fluxo Principal" -d ./5-results/SCR2AMEXCPEDLAB-001 "3-tests/2-ASSISTENCIAL/M_EXC_PED_LAB.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMEXCPEDLAB-001"
    #Acessar a tela "Diagnostico e Terapia>Laboratorio de Analises Clinicas>Atendimento>Exclusão de Pedido de Exame" @nprint @las
    Acessa a Tela Pela Busca |M_EXC_PED_LAB||Exclusão de Pedido de Exame| @las
    Validar Acesso a Tela |Exclusão de Pedido de Exames|

    Abrir Pedido e inserir Motivo |${dados}[Pedido]| |${dados}[Motivo]|
    Excluir e Validar |${dados}[Mensagem1]| |${dados}[Mensagem2]| |${dados}[Mensagem3]|
    