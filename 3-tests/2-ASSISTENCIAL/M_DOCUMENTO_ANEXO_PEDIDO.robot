#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Consulta de Anexo de Pedidos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_DOCUMENTO_ANEXO_PEDIDO.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_DOCUMENTO_ANEXO_PEDIDO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_DOCUMENTO_ANEXO_PEDIDOrobot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_DOCUMENTO_ANEXO_PEDIDO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/2-ASSISTENCIAL/M_DOCUMENTO_ANEXO_PEDIDO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_DOCUMENTO_ANEXO_PEDIDO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMDOCUMENTOANEXOPEDIDO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMDOCUMENTOANEXOPEDIDO-001:Fluxo Principal" -d ./5-results/SCR2AMDOCUMENTOANEXOPEDIDO-001 "3-tests/2-ASSISTENCIAL/M_DOCUMENTO_ANEXO_PEDIDO.robot"
# robot -v browser:firefox -t "SCR2AMDOCUMENTOANEXOPEDIDO-001:Fluxo Principal" -d ./5-results/SCR2AMDOCUMENTOANEXOPEDIDO-001 "3-tests/2-ASSISTENCIAL/M_DOCUMENTO_ANEXO_PEDIDO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMDOCUMENTOANEXOPEDIDO-001"
    #Acessar a tela "Diagnostico e Terapia>Laboratorio de Analises Clinicas>Atendimento>Pedidos de Exames Laboratório"@nprint @las
    Acessa a Tela Pela Busca |M_PEDEXA||Pedidos de Exames Laboratório| @las
    Validar Acesso a Tela |Pedidos de Exames|
    Preencher Pedido e acessar a Pagina |${dados}[Pedido]|
    Anexar Documento e Validar |${dados}[Tipo]| |${dados}[Stat]| |${dados}[Descr]| |${dados}[MensagemSucesso]|
    Visualizar Documento
