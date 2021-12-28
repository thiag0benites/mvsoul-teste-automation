#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Anexo de Paciente
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_TIPPRE.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_TIPPRE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_TIPPRErobot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_TIPPRE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/2-ASSISTENCIAL/M_TIPPRE_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_TIPPRE
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMTIPPRE-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMTIPPRE-001:Fluxo Principal" -d ./5-results/SCR2AMTIPPRE-001 "3-tests/2-ASSISTENCIAL/M_TIPPRE.robot"
# robot -v browser:firefox -t "SCR2AMTIPPRE-001:Fluxo Principal" -d ./5-results/SCR2AMTIPPRE-001 "3-tests/2-ASSISTENCIAL/M_TIPPRE.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMTIPPRE-001"
    #Acessar a tela "Clínica e Assistencial>Gerenciamento de Unidades>Tabelas>Tabelas Globais>Itens para Prescrever"@nprint @las
    Acessa a Tela Pela Busca |M_TIPPRE||Itens para Prescrever| @las
    Preencher Descricao e Esquema |${dados}[Descricao]| |${dados}[Esquema]|
    Preencher Estoque e Produto |${dados}[Estoque]| |${dados}[Produto]|
    Salvar e Validar |${dados}[MensagemEsperada]|
